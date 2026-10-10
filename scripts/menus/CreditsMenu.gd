extends Control
# CreditsMenu.gd
# Credits screen with scrolling text
# Author: Embers of Eden Team

@onready var credits_text: RichTextLabel = $CenterContainer/VBoxContainer/CreditsContainer/CreditsText
@onready var back_button: Button = $CenterContainer/VBoxContainer/ButtonContainer/BackButton
@onready var background: TextureRect = $Background

# Credits content
var credits_content = """
[center][font_size=48][color=#8B4513]EMBERS OF EDEN[/color][/font_size][/center]

[center][font_size=24][color=#A0522D]Credits[/color][/font_size][/center]

[center][font_size=18][color=#654321]
Game Development Team

[color=#8B4513]Programming[/color]
Your Development Team

[color=#8B4513]Art & Design[/color]
Placeholder Art Assets
Fantasy Theme Design

[color=#8B4513]Audio[/color]
Sound Effects - Placeholder
Music - Placeholder

[color=#8B4513]Special Thanks[/color]
Godot Engine Community
Open Source Contributors

[color=#8B4513]Technology[/color]
Built with Godot 4.3
GDScript Programming Language

[color=#8B4513]Target Platform[/color]
Steam for Windows

[font_size=16]
© 2024 Embers of Eden
Created for fantasy adventure gaming

Press ESC or click Back to return to Main Menu
[/font_size]
[/color][/center]
"""

func _ready():
	print("Credits Menu initialized")
	
	# Set up theme and content
	setup_credits_theme()
	setup_credits_content()
	
	# Connect signals
	connect_controls()
	
	# Play intro animation
	play_intro_animation()
	
	# Set focus
	if back_button:
		back_button.grab_focus()

func setup_credits_theme():
	# Apply fantasy theme
	if background:
		background.modulate = Color.BURLYWOOD
	
	# Style credits text
	if credits_text:
		credits_text.fit_content = true
		credits_text.scroll_active = true
		credits_text.custom_minimum_size = Vector2(800, 600)
		
		# Style the container
		var style_box = StyleBoxFlat.new()
		style_box.bg_color = Color(0.9, 0.9, 0.8, 0.8)  # Semi-transparent parchment
		style_box.border_width_left = 2
		style_box.border_width_right = 2
		style_box.border_width_top = 2
		style_box.border_width_bottom = 2
		style_box.border_color = Color.SADDLE_BROWN
		style_box.corner_radius_top_left = 10
		style_box.corner_radius_top_right = 10
		style_box.corner_radius_bottom_left = 10
		style_box.corner_radius_bottom_right = 10
		
		credits_text.add_theme_stylebox_override("normal", style_box)
	
	# Style back button
	if back_button:
		var style_normal = StyleBoxFlat.new()
		style_normal.bg_color = Color.BURLYWOOD
		style_normal.border_width_left = 2
		style_normal.border_width_right = 2
		style_normal.border_width_top = 2
		style_normal.border_width_bottom = 2
		style_normal.border_color = Color.SADDLE_BROWN
		style_normal.corner_radius_top_left = 6
		style_normal.corner_radius_top_right = 6
		style_normal.corner_radius_bottom_left = 6
		style_normal.corner_radius_bottom_right = 6
		
		var style_hover = StyleBoxFlat.new()
		style_hover.bg_color = Color.WHEAT
		style_hover.border_width_left = 2
		style_hover.border_width_right = 2
		style_hover.border_width_top = 2
		style_hover.border_width_bottom = 2
		style_hover.border_color = Color.GOLDENROD
		style_hover.corner_radius_top_left = 6
		style_hover.corner_radius_top_right = 6
		style_hover.corner_radius_bottom_left = 6
		style_hover.corner_radius_bottom_right = 6
		
		back_button.add_theme_stylebox_override("normal", style_normal)
		back_button.add_theme_stylebox_override("hover", style_hover)
		back_button.add_theme_stylebox_override("pressed", style_hover)
		back_button.add_theme_stylebox_override("focus", style_hover)
		
		back_button.add_theme_font_size_override("font_size", 20)
		back_button.add_theme_color_override("font_color", Color.SADDLE_BROWN)
		back_button.custom_minimum_size = Vector2(120, 50)

func setup_credits_content():
	if credits_text:
		credits_text.text = credits_content

func connect_controls():
	if back_button:
		back_button.pressed.connect(_on_back_pressed)

func play_intro_animation():
	# Fade in animation
	modulate.a = 0.0
	
	var fade_tween = create_tween()
	fade_tween.set_ease(Tween.EASE_OUT)
	fade_tween.set_trans(Tween.TRANS_CUBIC)
	fade_tween.tween_property(self, "modulate:a", 1.0, 0.5)
	
	# Optional: Auto-scroll credits slowly
	if credits_text:
		var scroll_tween = create_tween()
		scroll_tween.set_loops()  # Infinite loop
		await get_tree().create_timer(2.0).timeout  # Wait 2 seconds before starting scroll
		
		# Slow auto-scroll
		var scroll_duration = 30.0  # 30 seconds to scroll through all content
		scroll_tween.tween_method(
			func(value): credits_text.scroll_vertical = int(value),
			0,
			credits_text.get_content_height(),
			scroll_duration
		)

func _on_back_pressed():
	print("Back to Main Menu")
	
	# Return to main menu
	await create_transition_effect()
	GameManager.goto_scene(GameManager.MAIN_MENU_SCENE)

func create_transition_effect():
	# Simple fade out
	var transition_tween = create_tween()
	transition_tween.set_ease(Tween.EASE_IN)
	transition_tween.set_trans(Tween.TRANS_CUBIC)
	transition_tween.tween_property(self, "modulate:a", 0.0, 0.3)
	await transition_tween.finished

# Input handling
func _input(event):
	if event.is_action_pressed("ui_cancel"):
		_on_back_pressed()
	elif event.is_action_pressed("ui_accept"):
		_on_back_pressed() 