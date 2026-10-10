extends Node
# GameManager.gd
# Main game manager that handles scene transitions, settings, and global game state
# Author: Embers of Eden Team

signal scene_changed(scene_name: String)

# Game settings
var master_volume: float = 1.0
var sfx_volume: float = 1.0
var music_volume: float = 1.0
var fullscreen: bool = false

# Scene paths
const MAIN_MENU_SCENE = "res://scenes/menus/MainMenu.tscn"
const OPTIONS_MENU_SCENE = "res://scenes/menus/OptionsMenu.tscn"
const TEST_LEVEL_SCENE = "res://scenes/levels/TestLevel.tscn"
const CREDITS_SCENE = "res://scenes/menus/CreditsMenu.tscn"

# Current scene reference
var current_scene = null

func _ready():
	# Set as autoload singleton
	# Get the current scene at startup
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)
	
	# Load saved settings
	load_settings()
	
	# Apply initial settings
	apply_volume_settings()
	apply_display_settings()
	
	print("GameManager initialized")

# Scene transition with optional fade effect
func goto_scene(path: String, fade_transition: bool = true):
	print("Transitioning to scene: ", path)
	
	if fade_transition:
		# Simple fade transition
		await fade_out()
	
	# Defer the scene change to avoid errors
	call_deferred("_deferred_goto_scene", path)

func _deferred_goto_scene(path: String):
	# Free the current scene
	if current_scene:
		current_scene.free()
	
	# Load the new scene
	var new_scene = ResourceLoader.load(path)
	if new_scene:
		current_scene = new_scene.instantiate()
		get_tree().root.add_child(current_scene)
		get_tree().current_scene = current_scene
		
		# Emit signal
		scene_changed.emit(path.get_file().get_basename())
		
		# Fade in if needed
		fade_in()
	else:
		print("Error: Could not load scene at path: ", path)

# Simple fade effects
func fade_out():
	var fade_layer = ColorRect.new()
	fade_layer.color = Color.BLACK
	fade_layer.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	fade_layer.modulate.a = 0.0
	fade_layer.mouse_filter = Control.MOUSE_FILTER_IGNORE
	get_tree().root.add_child(fade_layer)
	
	var tween = create_tween()
	tween.tween_property(fade_layer, "modulate:a", 1.0, 0.3)
	await tween.finished
	
	fade_layer.queue_free()

func fade_in():
	await get_tree().process_frame  # Wait one frame
	var fade_layer = ColorRect.new()
	fade_layer.color = Color.BLACK
	fade_layer.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	fade_layer.mouse_filter = Control.MOUSE_FILTER_IGNORE
	get_tree().root.add_child(fade_layer)
	
	var tween = create_tween()
	tween.tween_property(fade_layer, "modulate:a", 0.0, 0.3)
	await tween.finished
	
	fade_layer.queue_free()

# Settings management
func set_master_volume(volume: float):
	master_volume = clampf(volume, 0.0, 1.0)
	apply_volume_settings()
	save_settings()

func set_sfx_volume(volume: float):
	sfx_volume = clampf(volume, 0.0, 1.0)
	apply_volume_settings()
	save_settings()

func set_music_volume(volume: float):
	music_volume = clampf(volume, 0.0, 1.0)
	apply_volume_settings()
	save_settings()

func set_fullscreen(enabled: bool):
	fullscreen = enabled
	apply_display_settings()
	save_settings()

func apply_volume_settings():
	# Apply volume to audio buses (you would set these up in the Audio Bus Layout)
	if AudioServer.get_bus_count() > 0:
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), 
			linear_to_db(master_volume))
	
	# You can add more audio buses here (SFX, Music, etc.)
	print("Volume settings applied - Master: ", master_volume)

func apply_display_settings():
	if fullscreen:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	
	print("Display settings applied - Fullscreen: ", fullscreen)

func save_settings():
	var config = ConfigFile.new()
	
	config.set_value("audio", "master_volume", master_volume)
	config.set_value("audio", "sfx_volume", sfx_volume)
	config.set_value("audio", "music_volume", music_volume)
	config.set_value("display", "fullscreen", fullscreen)
	
	config.save("user://settings.cfg")
	print("Settings saved")

func load_settings():
	var config = ConfigFile.new()
	var err = config.load("user://settings.cfg")
	
	if err == OK:
		master_volume = config.get_value("audio", "master_volume", 1.0)
		sfx_volume = config.get_value("audio", "sfx_volume", 1.0)
		music_volume = config.get_value("audio", "music_volume", 1.0)
		fullscreen = config.get_value("display", "fullscreen", false)
		print("Settings loaded")
	else:
		print("No settings file found, using defaults")

# Utility functions
func quit_game():
	print("Quitting game...")
	get_tree().quit()

# Input handling for global actions (like fullscreen toggle)
func _input(event):
	if event.is_action_pressed("ui_accept") and event.alt_pressed:
		# Alt+Enter to toggle fullscreen
		set_fullscreen(!fullscreen) 