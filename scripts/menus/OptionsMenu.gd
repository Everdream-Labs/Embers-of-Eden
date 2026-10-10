extends Control
# OptionsMenu.gd
# Enhanced options menu with comprehensive settings
# Author: Embers of Eden Team

# UI References - Updated for new structure
@onready var master_volume_slider: HSlider = $CenterContainer/MainPanel/VBoxContainer/OptionsScrollContainer/OptionsContainer/AudioSection/MasterVolumeContainer/MasterVolumeSlider
@onready var master_volume_label: Label = $CenterContainer/MainPanel/VBoxContainer/OptionsScrollContainer/OptionsContainer/AudioSection/MasterVolumeContainer/MasterVolumeLabel
@onready var sfx_volume_slider: HSlider = $CenterContainer/MainPanel/VBoxContainer/OptionsScrollContainer/OptionsContainer/AudioSection/SFXVolumeContainer/SFXVolumeSlider
@onready var sfx_volume_label: Label = $CenterContainer/MainPanel/VBoxContainer/OptionsScrollContainer/OptionsContainer/AudioSection/SFXVolumeContainer/SFXVolumeLabel
@onready var music_volume_slider: HSlider = $CenterContainer/MainPanel/VBoxContainer/OptionsScrollContainer/OptionsContainer/AudioSection/MusicVolumeContainer/MusicVolumeSlider
@onready var music_volume_label: Label = $CenterContainer/MainPanel/VBoxContainer/OptionsScrollContainer/OptionsContainer/AudioSection/MusicVolumeContainer/MusicVolumeLabel

# Display settings
@onready var fullscreen_checkbox: CheckBox = $CenterContainer/MainPanel/VBoxContainer/OptionsScrollContainer/OptionsContainer/DisplaySection/FullscreenContainer/FullscreenCheckBox
@onready var vsync_checkbox: CheckBox = $CenterContainer/MainPanel/VBoxContainer/OptionsScrollContainer/OptionsContainer/DisplaySection/VSyncContainer/VSyncCheckBox

# Gameplay settings
@onready var autosave_checkbox: CheckBox = $CenterContainer/MainPanel/VBoxContainer/OptionsScrollContainer/OptionsContainer/GameplaySection/AutoSaveContainer/AutoSaveCheckBox
@onready var difficulty_option: OptionButton = $CenterContainer/MainPanel/VBoxContainer/OptionsScrollContainer/OptionsContainer/GameplaySection/DifficultyContainer/DifficultyOptionButton

# Buttons
@onready var back_button: Button = $CenterContainer/MainPanel/VBoxContainer/ButtonContainer/BackButton
@onready var reset_button: Button = $CenterContainer/MainPanel/VBoxContainer/ButtonContainer/ResetButton

# Background and container
@onready var background: TextureRect = $Background
@onready var options_container: Control = $CenterContainer

# Settings data
var settings_data = {
	"master_volume": 1.0,
	"sfx_volume": 1.0,
	"music_volume": 1.0,
	"fullscreen": false,
	"vsync": true,
	"autosave": true,
	"difficulty": 1
}

func _ready():
	print("Enhanced Options Menu initialized")
	
	# Set up the UI theme
	setup_options_theme()
	
	# Connect all controls
	connect_controls()
	
	# Load current settings
	load_current_settings()
	
	# Play intro animation
	play_intro_animation()
	
	# Set initial focus
	if master_volume_slider:
		master_volume_slider.grab_focus()

func setup_options_theme():
	# Apply enhanced fantasy theme matching main menu
	setup_background()
	setup_sliders()
	setup_checkboxes()
	setup_option_buttons()

func setup_background():
	# Match main menu background style
	if background:
		# Add a subtle tint to match our theme
		background.modulate = Color(0.8, 0.7, 0.6, 1.0)

func setup_sliders():
	# Style all volume sliders with beautiful custom appearance
	var sliders = [master_volume_slider, sfx_volume_slider, music_volume_slider]
	
	for slider in sliders:
		if not slider:
			continue
		
		# Create elegant slider styles
		var style_grabber = StyleBoxFlat.new()
		style_grabber.bg_color = Color(0.8, 0.6, 0.4, 1)
		style_grabber.border_width_left = 2
		style_grabber.border_width_right = 2
		style_grabber.border_width_top = 2
		style_grabber.border_width_bottom = 2
		style_grabber.border_color = Color(0.6, 0.4, 0.2, 1)
		style_grabber.corner_radius_top_left = 8
		style_grabber.corner_radius_top_right = 8
		style_grabber.corner_radius_bottom_left = 8
		style_grabber.corner_radius_bottom_right = 8
		
		var style_slider = StyleBoxFlat.new()
		style_slider.bg_color = Color(0.3, 0.2, 0.15, 1)
		style_slider.border_width_left = 1
		style_slider.border_width_right = 1
		style_slider.border_width_top = 1
		style_slider.border_width_bottom = 1
		style_slider.border_color = Color(0.5, 0.3, 0.2, 1)
		style_slider.corner_radius_top_left = 4
		style_slider.corner_radius_top_right = 4
		style_slider.corner_radius_bottom_left = 4
		style_slider.corner_radius_bottom_right = 4
		
		var style_grabber_highlight = StyleBoxFlat.new()
		style_grabber_highlight.bg_color = Color(0.9, 0.7, 0.5, 1)
		style_grabber_highlight.border_width_left = 2
		style_grabber_highlight.border_width_right = 2
		style_grabber_highlight.border_width_top = 2
		style_grabber_highlight.border_width_bottom = 2
		style_grabber_highlight.border_color = Color(0.7, 0.5, 0.3, 1)
		style_grabber_highlight.corner_radius_top_left = 8
		style_grabber_highlight.corner_radius_top_right = 8
		style_grabber_highlight.corner_radius_bottom_left = 8
		style_grabber_highlight.corner_radius_bottom_right = 8
		
		slider.add_theme_stylebox_override("grabber_area", style_grabber)
		slider.add_theme_stylebox_override("grabber_area_highlight", style_grabber_highlight)
		slider.add_theme_stylebox_override("slider", style_slider)

func setup_checkboxes():
	# Style checkboxes to match our theme
	var checkboxes = [fullscreen_checkbox, vsync_checkbox, autosave_checkbox]
	
	for checkbox in checkboxes:
		if not checkbox:
			continue
		
		checkbox.add_theme_color_override("font_color", Color(1, 0.9, 0.7, 1))
		checkbox.add_theme_font_size_override("font_size", 20)

func setup_option_buttons():
	# Style the difficulty option button
	if difficulty_option:
		difficulty_option.add_theme_color_override("font_color", Color(1, 0.9, 0.7, 1))
		difficulty_option.add_theme_font_size_override("font_size", 18)

func connect_controls():
	# Connect volume sliders
	if master_volume_slider:
		master_volume_slider.value_changed.connect(_on_master_volume_changed)
	
	if sfx_volume_slider:
		sfx_volume_slider.value_changed.connect(_on_sfx_volume_changed)
	
	if music_volume_slider:
		music_volume_slider.value_changed.connect(_on_music_volume_changed)
	
	# Connect display settings
	if fullscreen_checkbox:
		fullscreen_checkbox.toggled.connect(_on_fullscreen_toggled)
	
	if vsync_checkbox:
		vsync_checkbox.toggled.connect(_on_vsync_toggled)
	
	# Connect gameplay settings
	if autosave_checkbox:
		autosave_checkbox.toggled.connect(_on_autosave_toggled)
	
	if difficulty_option:
		difficulty_option.item_selected.connect(_on_difficulty_selected)
	
	# Connect buttons
	if back_button:
		back_button.pressed.connect(_on_back_pressed)
	
	if reset_button:
		reset_button.pressed.connect(_on_reset_pressed)

func load_current_settings():
	# Load settings from GameManager or defaults
	if GameManager and GameManager.has_method("get_setting"):
		settings_data.master_volume = GameManager.get_setting("master_volume", 1.0)
		settings_data.sfx_volume = GameManager.get_setting("sfx_volume", 1.0)
		settings_data.music_volume = GameManager.get_setting("music_volume", 1.0)
		settings_data.fullscreen = GameManager.get_setting("fullscreen", false)
		settings_data.vsync = GameManager.get_setting("vsync", true)
		settings_data.autosave = GameManager.get_setting("autosave", true)
		settings_data.difficulty = GameManager.get_setting("difficulty", 1)
	
	# Apply loaded settings to UI
	apply_settings_to_ui()

func apply_settings_to_ui():
	# Update all UI elements with current settings
	if master_volume_slider:
		master_volume_slider.value = settings_data.master_volume
		update_volume_label(master_volume_label, settings_data.master_volume)
	
	if sfx_volume_slider:
		sfx_volume_slider.value = settings_data.sfx_volume
		update_volume_label(sfx_volume_label, settings_data.sfx_volume)
	
	if music_volume_slider:
		music_volume_slider.value = settings_data.music_volume
		update_volume_label(music_volume_label, settings_data.music_volume)
	
	if fullscreen_checkbox:
		fullscreen_checkbox.button_pressed = settings_data.fullscreen
	
	if vsync_checkbox:
		vsync_checkbox.button_pressed = settings_data.vsync
	
	if autosave_checkbox:
		autosave_checkbox.button_pressed = settings_data.autosave
	
	if difficulty_option:
		difficulty_option.selected = settings_data.difficulty

func update_volume_label(label: Label, volume: float):
	if label:
		label.text = str(int(volume * 100)) + "%"

func save_settings():
	# Save settings to GameManager
	if GameManager and GameManager.has_method("set_setting"):
		for key in settings_data.keys():
			GameManager.set_setting(key, settings_data[key])
		
		if GameManager.has_method("save_settings"):
			GameManager.save_settings()

func play_intro_animation():
	# Elegant fade and slide animation
	modulate.a = 0.0
	
	var fade_tween = create_tween()
	fade_tween.set_ease(Tween.EASE_OUT)
	fade_tween.set_trans(Tween.TRANS_CUBIC)
	fade_tween.tween_property(self, "modulate:a", 1.0, 0.6)
	
	# Slide in animation for options container
	if options_container:
		options_container.position.y += 30
		var slide_tween = create_tween()
		slide_tween.set_ease(Tween.EASE_OUT)
		slide_tween.set_trans(Tween.TRANS_BACK)
		slide_tween.tween_property(options_container, "position:y", options_container.position.y - 30, 0.8)

# Audio settings callbacks
func _on_master_volume_changed(value: float):
	settings_data.master_volume = value
	update_volume_label(master_volume_label, value)
	apply_volume_setting("master", value)
	save_settings()

func _on_sfx_volume_changed(value: float):
	settings_data.sfx_volume = value
	update_volume_label(sfx_volume_label, value)
	apply_volume_setting("sfx", value)
	save_settings()

func _on_music_volume_changed(value: float):
	settings_data.music_volume = value
	update_volume_label(music_volume_label, value)
	apply_volume_setting("music", value)
	save_settings()

func apply_volume_setting(bus_name: String, volume: float):
	# Apply volume to audio bus
	var db_volume = linear_to_db(volume)
	var bus_index = AudioServer.get_bus_index(bus_name.capitalize())
	if bus_index >= 0:
		AudioServer.set_bus_volume_db(bus_index, db_volume)

# Display settings callbacks
func _on_fullscreen_toggled(pressed: bool):
	settings_data.fullscreen = pressed
	apply_fullscreen_setting(pressed)
	save_settings()

func _on_vsync_toggled(pressed: bool):
	settings_data.vsync = pressed
	apply_vsync_setting(pressed)
	save_settings()

func apply_fullscreen_setting(enabled: bool):
	if enabled:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)

func apply_vsync_setting(enabled: bool):
	if enabled:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED)
	else:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

# Gameplay settings callbacks
func _on_autosave_toggled(pressed: bool):
	settings_data.autosave = pressed
	save_settings()

func _on_difficulty_selected(index: int):
	settings_data.difficulty = index
	save_settings()

# Button callbacks
func _on_back_pressed():
	print("Back to main menu")
	create_transition_effect()
	await get_tree().process_frame
	GameManager.goto_scene(GameManager.MAIN_MENU_SCENE)

func _on_reset_pressed():
	print("Reset to defaults")
	reset_to_defaults()

func reset_to_defaults():
	# Reset all settings to default values
	settings_data = {
		"master_volume": 1.0,
		"sfx_volume": 1.0,
		"music_volume": 1.0,
		"fullscreen": false,
		"vsync": true,
		"autosave": true,
		"difficulty": 1
	}
	
	# Apply to UI and save
	apply_settings_to_ui()
	save_settings()
	
	# Apply settings immediately
	apply_volume_setting("master", 1.0)
	apply_volume_setting("sfx", 1.0)
	apply_volume_setting("music", 1.0)
	apply_fullscreen_setting(false)
	apply_vsync_setting(true)

func create_transition_effect():
	# Smooth transition effect
	var transition_tween = create_tween()
	transition_tween.set_ease(Tween.EASE_IN)
	transition_tween.set_trans(Tween.TRANS_CUBIC)
	transition_tween.tween_property(self, "modulate:a", 0.0, 0.3)
	await transition_tween.finished

# Input handling
func _input(event):
	if event.is_action_pressed("ui_cancel"):
		_on_back_pressed() 