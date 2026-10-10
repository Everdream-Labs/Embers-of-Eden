extends Control
# MainMenu.gd
# Enhanced fantasy-themed main menu controller
# Author: Embers of Eden Team

# Button references - Updated for new UI structure
@onready var new_game_button: Button = $CenterContainer/MainPanel/VBoxContainer/MenuButtons/PlayButton
@onready var options_button: Button = $CenterContainer/MainPanel/VBoxContainer/MenuButtons/OptionsButton
@onready var credits_button: Button = $CenterContainer/MainPanel/VBoxContainer/MenuButtons/CreditsButton
@onready var exit_button: Button = $CenterContainer/MainPanel/VBoxContainer/MenuButtons/QuitButton

# UI Elements
@onready var title_label: Label = $CenterContainer/MainPanel/VBoxContainer/TitleContainer/GameTitle
@onready var background: TextureRect = $Background
@onready var menu_container: Control = $CenterContainer

# Audio - will be created dynamically
var button_click_audio: AudioStreamPlayer
var button_hover_audio: AudioStreamPlayer

# Animation and effects
var button_hover_scale = 1.15
var button_press_scale = 0.95
var original_button_scale = Vector2.ONE

# Particle effects
var particle_systems: Array[CPUParticles2D] = []

func _ready():
	print("Enhanced Main Menu initialized")
	
	# Debug button references
	print("Button references:")
	print("  new_game_button: ", new_game_button)
	print("  options_button: ", options_button)
	print("  credits_button: ", credits_button)
	print("  exit_button: ", exit_button)
	
	# Set up audio
	setup_audio()
	
	# Connect button signals
	connect_buttons()
	
	# Set up menu appearance
	setup_menu_theme()
	
	# Add particle effects
	create_particle_effects()
	
	# Play intro animation
	play_intro_animation()
	
	# Set initial focus
	if new_game_button:
		new_game_button.grab_focus()
		print("Focus set on new_game_button")
	else:
		print("Warning: new_game_button not found")

func setup_audio():
	# Create audio players for button sounds
	if not button_click_audio:
		button_click_audio = AudioStreamPlayer.new()
		button_click_audio.name = "ButtonClickAudio"
		add_child(button_click_audio)
	
	if not button_hover_audio:
		button_hover_audio = AudioStreamPlayer.new()
		button_hover_audio.name = "ButtonHoverAudio"
		add_child(button_hover_audio)
	
	# Create simple audio streams (placeholder sounds)
	button_click_audio.stream = create_click_sound()
	button_hover_audio.stream = create_hover_sound()
	button_click_audio.volume_db = -10
	button_hover_audio.volume_db = -15

func create_click_sound() -> AudioStream:
	# Create a simple click sound using a more compatible approach
	# For now, return null and we'll add proper audio files later
	return null

func create_hover_sound() -> AudioStream:
	# Create a subtle hover sound
	# For now, return null and we'll add proper audio files later
	return null

func connect_buttons():
	# The pressed signals are already connected in the scene file
	# Just connect the visual effect signals
	var buttons = [new_game_button, options_button, credits_button, exit_button]
	
	for button in buttons:
		if button:
			button.mouse_entered.connect(_on_button_hovered.bind(button))
			button.mouse_exited.connect(_on_button_unhovered.bind(button))
			button.button_down.connect(_on_button_pressed.bind(button))
			button.button_up.connect(_on_button_released.bind(button))

func setup_menu_theme():
	# Set up the fantasy parchment theme
	setup_background()
	setup_title()
	setup_buttons()

func setup_background():
	# Create an enhanced fantasy background
	if background:
		# Try to load the Legacy Fantasy background first
		var fantasy_bg = load("res://assets/sprites/Background.png")
		if fantasy_bg:
			background.texture = fantasy_bg
			background.modulate = Color(0.4, 0.3, 0.2, 0.8)  # Dark overlay for readability
		else:
			# Fallback to colored background
			background.modulate = Color(0.2, 0.15, 0.1, 0.9)  # Dark brown parchment

func setup_title():
	# Style the game title with enhanced fantasy styling
	if title_label:
		title_label.text = "EMBERS OF EDEN"
		title_label.add_theme_font_size_override("font_size", 84)
		
		# Enhanced colors with glow effect
		title_label.add_theme_color_override("font_color", Color.GOLD)
		title_label.add_theme_color_override("font_shadow_color", Color(0.4, 0.2, 0.0, 0.8))
		title_label.add_theme_constant_override("shadow_offset_x", 4)
		title_label.add_theme_constant_override("shadow_offset_y", 4)
		
		# Add outline effect
		title_label.add_theme_color_override("font_outline_color", Color(0.2, 0.1, 0.0))
		title_label.add_theme_constant_override("outline_size", 2)
		
		# Animate the title
		animate_title()

func setup_buttons():
	# Style all menu buttons with fantasy theme
	var buttons = [new_game_button, options_button, credits_button, exit_button]
	
	for button in buttons:
		if not button:
			continue
			
		# Create custom button style (placeholder)
		var style_normal = StyleBoxFlat.new()
		style_normal.bg_color = Color.BURLYWOOD
		style_normal.border_width_left = 3
		style_normal.border_width_right = 3
		style_normal.border_width_top = 3
		style_normal.border_width_bottom = 3
		style_normal.border_color = Color.SADDLE_BROWN
		style_normal.corner_radius_top_left = 8
		style_normal.corner_radius_top_right = 8
		style_normal.corner_radius_bottom_left = 8
		style_normal.corner_radius_bottom_right = 8
		
		var style_hover = StyleBoxFlat.new()
		style_hover.bg_color = Color.WHEAT
		style_hover.border_width_left = 3
		style_hover.border_width_right = 3
		style_hover.border_width_top = 3
		style_hover.border_width_bottom = 3
		style_hover.border_color = Color.GOLDENROD
		style_hover.corner_radius_top_left = 8
		style_hover.corner_radius_top_right = 8
		style_hover.corner_radius_bottom_left = 8
		style_hover.corner_radius_bottom_right = 8
		
		var style_pressed = StyleBoxFlat.new()
		style_pressed.bg_color = Color.TAN
		style_pressed.border_width_left = 3
		style_pressed.border_width_right = 3
		style_pressed.border_width_top = 3
		style_pressed.border_width_bottom = 3
		style_pressed.border_color = Color.DARK_GOLDENROD
		style_pressed.corner_radius_top_left = 8
		style_pressed.corner_radius_top_right = 8
		style_pressed.corner_radius_bottom_left = 8
		style_pressed.corner_radius_bottom_right = 8
		
		button.add_theme_stylebox_override("normal", style_normal)
		button.add_theme_stylebox_override("hover", style_hover)
		button.add_theme_stylebox_override("pressed", style_pressed)
		button.add_theme_stylebox_override("focus", style_hover)
		
		# Font styling
		button.add_theme_font_size_override("font_size", 24)
		button.add_theme_color_override("font_color", Color.SADDLE_BROWN)
		button.add_theme_color_override("font_hover_color", Color.DARK_GOLDENROD)
		button.add_theme_color_override("font_pressed_color", Color.BLACK)
		
		# Button size
		button.custom_minimum_size = Vector2(250, 60)

func play_intro_animation():
	# Fade in animation for the menu
	modulate.a = 0.0
	
	var fade_tween = create_tween()
	fade_tween.set_ease(Tween.EASE_OUT)
	fade_tween.set_trans(Tween.TRANS_CUBIC)
	fade_tween.tween_property(self, "modulate:a", 1.0, 1.0)
	
	# Slide in animation for menu container
	if menu_container:
		menu_container.position.y += 50
		var slide_tween = create_tween()
		slide_tween.set_ease(Tween.EASE_OUT)
		slide_tween.set_trans(Tween.TRANS_BACK)
		slide_tween.tween_property(menu_container, "position:y", menu_container.position.y - 50, 0.8)

func _on_button_hovered(button: Button):
	# Button hover effect
	if not button:
		return
	
	# Play hover sound
	play_hover_sound()
		
	var hover_tween = create_tween()
	hover_tween.set_ease(Tween.EASE_OUT)
	hover_tween.set_trans(Tween.TRANS_CUBIC)
	hover_tween.tween_property(button, "scale", Vector2.ONE * button_hover_scale, 0.2)

func _on_button_unhovered(button: Button):
	# Button unhover effect
	if not button:
		return
		
	var unhover_tween = create_tween()
	unhover_tween.set_ease(Tween.EASE_OUT)
	unhover_tween.set_trans(Tween.TRANS_CUBIC)
	unhover_tween.tween_property(button, "scale", Vector2.ONE, 0.2)

func _on_button_pressed(button: Button):
	# Button press effect
	if not button:
		return
		
	var press_tween = create_tween()
	press_tween.set_ease(Tween.EASE_OUT)
	press_tween.set_trans(Tween.TRANS_CUBIC)
	press_tween.tween_property(button, "scale", Vector2.ONE * button_press_scale, 0.1)

func _on_button_released(button: Button):
	# Button release effect
	if not button:
		return
		
	var release_tween = create_tween()
	release_tween.set_ease(Tween.EASE_OUT)
	release_tween.set_trans(Tween.TRANS_BACK)
	release_tween.tween_property(button, "scale", Vector2.ONE * button_hover_scale, 0.15)

func animate_title():
	# Add subtle floating animation to title
	if not title_label:
		return
		
	var float_tween = create_tween()
	float_tween.set_loops()
	float_tween.set_ease(Tween.EASE_IN_OUT)
	float_tween.set_trans(Tween.TRANS_SINE)
	float_tween.tween_property(title_label, "position:y", title_label.position.y - 10, 2.0)
	float_tween.tween_property(title_label, "position:y", title_label.position.y + 10, 2.0)

func create_particle_effects():
	# Create subtle magical particle effects around the menu
	create_simple_particle_effect()

func create_floating_particles():
	# Temporarily disabled complex particles to ensure game stability
	print("Particle system placeholder - complex effects disabled for stability")

func create_sparkle_texture() -> Texture2D:
	# Create a simple sparkle texture
	var image = Image.create(8, 8, false, Image.FORMAT_RGBA8)
	image.set_pixel(4, 4, Color.WHITE)
	image.set_pixel(3, 4, Color.WHITE)
	image.set_pixel(5, 4, Color.WHITE)
	image.set_pixel(4, 3, Color.WHITE)
	image.set_pixel(4, 5, Color.WHITE)
	
	var texture = ImageTexture.new()
	texture.set_image(image)
	return texture

func create_fade_gradient() -> Gradient:
	# Create gradient for particle fade
	var gradient = Gradient.new()
	gradient.add_point(0.0, Color.WHITE)
	gradient.add_point(1.0, Color.TRANSPARENT)
	return gradient

func create_simple_particle_effect():
	# Particle effects temporarily disabled for stability
	print("Particle effects disabled - game stability prioritized")

# Button handlers - Updated to match scene connections
func _on_play_button_pressed():
	print("START ADVENTURE pressed")
	play_button_sound()
	
	# Transition to test level
	await create_transition_effect()
	GameManager.goto_scene(GameManager.TEST_LEVEL_SCENE)

func _on_options_button_pressed():
	print("Options pressed")
	play_button_sound()
	
	# Transition to options menu
	await create_transition_effect()
	GameManager.goto_scene(GameManager.OPTIONS_MENU_SCENE)

func _on_credits_button_pressed():
	print("Credits pressed")
	play_button_sound()
	
	# Transition to credits
	await create_transition_effect()
	GameManager.goto_scene(GameManager.CREDITS_SCENE)

func _on_quit_button_pressed():
	print("Exit pressed")
	play_button_sound()
	
	# Show confirmation dialog or just quit
	await create_exit_effect()
	GameManager.quit_game()

# Legacy method names for compatibility
func _on_new_game_pressed():
	_on_play_button_pressed()

func _on_options_pressed():
	_on_options_button_pressed()

func _on_credits_pressed():
	_on_credits_button_pressed()

func _on_exit_pressed():
	_on_quit_button_pressed()

func play_button_sound():
	# Play button click sound
	if button_click_audio and button_click_audio.stream:
		button_click_audio.play()
	else:
		# Placeholder for when we add proper audio files
		print("Button clicked (audio placeholder)")

func play_hover_sound():
	# Play button hover sound
	if button_hover_audio and button_hover_audio.stream:
		button_hover_audio.play()
	# No else needed for hover sounds as they should be subtle

func create_transition_effect():
	# Simple transition effect before scene change
	var transition_tween = create_tween()
	transition_tween.set_ease(Tween.EASE_IN)
	transition_tween.set_trans(Tween.TRANS_CUBIC)
	transition_tween.tween_property(self, "modulate:a", 0.0, 0.3)
	await transition_tween.finished

func create_exit_effect():
	# Special effect for exiting
	var exit_tween = create_tween()
	exit_tween.set_ease(Tween.EASE_IN)
	exit_tween.set_trans(Tween.TRANS_BACK)
	exit_tween.parallel().tween_property(self, "modulate:a", 0.0, 0.5)
	exit_tween.parallel().tween_property(menu_container, "scale", Vector2.ZERO, 0.5)
	await exit_tween.finished

# Input handling
func _input(event):
	# Handle gamepad navigation
	if event.is_action_pressed("ui_cancel"):
		_on_exit_pressed()
	elif event.is_action_pressed("ui_accept"):
		# Trigger focused button
		var focused_control = get_viewport().gui_get_focus_owner()
		if focused_control is Button:
			focused_control.emit_signal("pressed") 
