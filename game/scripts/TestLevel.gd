extends Node2D
# TestLevel.gd
# Enhanced isometric test level with beautiful fantasy UI
# Author: Embers of Eden Team

# Level components - made more robust
var player: PlayerController
var camera: Camera2D
var ui_layer: CanvasLayer
var pause_menu: Control
var level_background: Node2D

# Game UI components
var game_ui: Control
var health_bar: ProgressBar
var mana_bar: ProgressBar
var bottom_toolbar: Control
var mini_map: Control
var inventory_button: Button
var character_button: Button
var skills_button: Button
var quest_button: Button
var settings_button: Button

# Level state
var is_paused: bool = false
var level_bounds: Rect2 = Rect2(-1000, -1000, 2000, 2000)

# Environment objects
var trees: Array[Node2D] = []
var grass_patches: Array[Node2D] = []

func _ready():
	print("=== ENHANCED TEST LEVEL STARTING ===")
	print("TestLevel._ready() called")
	
	# Get node references manually
	player = get_node("Player")
	ui_layer = get_node("UILayer")
	pause_menu = get_node("UILayer/PauseMenu")
	level_background = get_node("LevelBackground")
	
	# Camera might be in the player
	if player:
		camera = player.get_node("Camera2D")
	
	# Debug node references
	print("Node references:")
	print("  player: ", player)
	print("  camera: ", camera)
	print("  ui_layer: ", ui_layer)
	print("  pause_menu: ", pause_menu)
	print("  level_background: ", level_background)
	
	# Setup the level
	print("Setting up camera...")
	setup_camera()
	
	print("Setting up enhanced UI...")
	setup_enhanced_ui()
	
	print("Generating environment...")
	generate_environment()
	
	# Initialize player
	if player:
		player.global_position = Vector2.ZERO
		print("Player positioned at center")
	else:
		print("ERROR: Player not found!")
	
	# Hide pause menu initially
	if pause_menu:
		pause_menu.visible = false
		print("Pause menu hidden")
	else:
		print("ERROR: Pause menu not found!")
	
	print("=== TEST LEVEL INITIALIZATION COMPLETE ===")

func setup_camera():
	# Configure camera for isometric view with improved zoom
	if camera:
		camera.enabled = true
		camera.zoom = Vector2(3.0, 3.0)  # Use the improved zoom from environment improvements
		camera.limit_left = int(level_bounds.position.x)
		camera.limit_right = int(level_bounds.position.x + level_bounds.size.x)
		camera.limit_top = int(level_bounds.position.y)
		camera.limit_bottom = int(level_bounds.position.y + level_bounds.size.y)
		
		# Smooth camera movement
		camera.position_smoothing_enabled = true
		camera.position_smoothing_speed = 5.0
		
		print("Camera configured for enhanced isometric view")

func setup_enhanced_ui():
	print("--- Starting UI setup ---")
	# Create comprehensive game UI matching main menu style
	
	print("Creating game UI...")
	create_game_ui()
	
	print("Creating bottom toolbar...")
	create_bottom_toolbar()
	
	print("Creating health/mana bars...")
	create_health_mana_bars()
	
	print("Creating mini-map...")
	create_mini_map()
	
	print("Creating enhanced pause menu...")
	create_enhanced_pause_menu()
	
	print("--- Enhanced UI setup complete ---")

func create_game_ui():
	print("  Creating main UI container...")
	if not ui_layer:
		print("  ERROR: ui_layer is null!")
		return
	
	# Main UI container
	game_ui = Control.new()
	game_ui.name = "GameUI"
	game_ui.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	game_ui.mouse_filter = Control.MOUSE_FILTER_PASS  # Allow mouse interactions
	
	print("  Adding GameUI to ui_layer...")
	ui_layer.add_child(game_ui)
	print("  Game UI created and added to scene successfully")

func create_bottom_toolbar():
	print("  Creating bottom toolbar...")
	if not game_ui:
		print("  ERROR: game_ui is null!")
		return
	
	# Create beautiful bottom toolbar matching main menu style
	bottom_toolbar = Control.new()
	bottom_toolbar.name = "BottomToolbar"
	bottom_toolbar.set_anchors_preset(Control.PRESET_BOTTOM_WIDE)
	bottom_toolbar.set_size(Vector2(0, 100))
	bottom_toolbar.position.y = -100
	bottom_toolbar.mouse_filter = Control.MOUSE_FILTER_PASS  # Allow interactions
	
	print("  Adding toolbar to game_ui...")
	game_ui.add_child(bottom_toolbar)
	print("  Bottom toolbar created successfully")
	
	# Toolbar background with fantasy styling
	var toolbar_bg = create_fantasy_panel(Vector2(1920, 100))
	toolbar_bg.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	bottom_toolbar.add_child(toolbar_bg)
	
	# Toolbar button container
	var button_container = HBoxContainer.new()
	button_container.set_anchors_and_offsets_preset(Control.PRESET_CENTER)
	button_container.size = Vector2(600, 80)
	button_container.position = Vector2(-300, -40)
	button_container.add_theme_constant_override("separation", 20)
	bottom_toolbar.add_child(button_container)
	
	# Create toolbar buttons with fantasy styling
	inventory_button = create_toolbar_button("🎒 INVENTORY", "Open inventory")
	character_button = create_toolbar_button("⚔️ CHARACTER", "Character stats")
	skills_button = create_toolbar_button("📜 SKILLS", "Skill tree")
	quest_button = create_toolbar_button("🗺️ QUESTS", "Quest journal")
	settings_button = create_toolbar_button("⚙️ SETTINGS", "Game settings")
	
	# Add buttons to container
	button_container.add_child(inventory_button)
	button_container.add_child(character_button)
	button_container.add_child(skills_button)
	button_container.add_child(quest_button)
	button_container.add_child(settings_button)
	
	# Connect button signals
	inventory_button.pressed.connect(_on_inventory_pressed)
	character_button.pressed.connect(_on_character_pressed)
	skills_button.pressed.connect(_on_skills_pressed)
	quest_button.pressed.connect(_on_quests_pressed)
	settings_button.pressed.connect(_on_settings_pressed)
	
	print("Toolbar buttons created and connected:")
	print("  Inventory: ", inventory_button)
	print("  Character: ", character_button)
	print("  Skills: ", skills_button)
	print("  Quests: ", quest_button)
	print("  Settings: ", settings_button)

func create_toolbar_button(text: String, tooltip: String) -> Button:
	var button = Button.new()
	button.text = text
	button.tooltip_text = tooltip
	button.custom_minimum_size = Vector2(110, 60)
	button.mouse_filter = Control.MOUSE_FILTER_PASS  # Ensure button can be clicked
	
	# Apply fantasy button styling
	apply_fantasy_button_style(button)
	
	print("Created button: ", text)
	return button

func apply_fantasy_button_style(button: Button):
	# Create matching fantasy button style from main menu
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
	
	var style_pressed = StyleBoxFlat.new()
	style_pressed.bg_color = Color.TAN
	style_pressed.border_width_left = 2
	style_pressed.border_width_right = 2
	style_pressed.border_width_top = 2
	style_pressed.border_width_bottom = 2
	style_pressed.border_color = Color.DARK_GOLDENROD
	style_pressed.corner_radius_top_left = 6
	style_pressed.corner_radius_top_right = 6
	style_pressed.corner_radius_bottom_left = 6
	style_pressed.corner_radius_bottom_right = 6
	
	button.add_theme_stylebox_override("normal", style_normal)
	button.add_theme_stylebox_override("hover", style_hover)
	button.add_theme_stylebox_override("pressed", style_pressed)
	
	# Font styling
	button.add_theme_font_size_override("font_size", 12)
	button.add_theme_color_override("font_color", Color.SADDLE_BROWN)
	button.add_theme_color_override("font_hover_color", Color.DARK_GOLDENROD)
	button.add_theme_color_override("font_pressed_color", Color.BLACK)

func create_fantasy_panel(size: Vector2) -> Control:
	# Create fantasy-styled panel matching main menu
	var panel = Control.new()
	panel.size = size
	
	# Background with fantasy styling
	var bg = ColorRect.new()
	bg.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	
	# Create fantasy panel style
	var style = StyleBoxFlat.new()
	style.bg_color = Color(0.6, 0.4, 0.2, 0.9)  # Brown parchment color
	style.border_width_left = 3
	style.border_width_right = 3
	style.border_width_top = 3
	style.border_width_bottom = 3
	style.border_color = Color.SADDLE_BROWN
	style.corner_radius_top_left = 8
	style.corner_radius_top_right = 8
	style.corner_radius_bottom_left = 8
	style.corner_radius_bottom_right = 8
	
	bg.add_theme_stylebox_override("panel", style)
	panel.add_child(bg)
	
	return panel

func create_health_mana_bars():
	# Create health and mana bars in top-left corner
	var stat_container = VBoxContainer.new()
	stat_container.position = Vector2(20, 20)
	stat_container.size = Vector2(250, 80)
	stat_container.add_theme_constant_override("separation", 10)
	game_ui.add_child(stat_container)
	
	# Health bar container
	var health_container = HBoxContainer.new()
	health_container.add_theme_constant_override("separation", 10)
	stat_container.add_child(health_container)
	
	var health_label = Label.new()
	health_label.text = "❤️ HEALTH:"
	health_label.add_theme_font_size_override("font_size", 16)
	health_label.add_theme_color_override("font_color", Color.WHITE)
	health_label.add_theme_color_override("font_shadow_color", Color.BLACK)
	health_label.add_theme_constant_override("shadow_offset_x", 1)
	health_label.add_theme_constant_override("shadow_offset_y", 1)
	health_container.add_child(health_label)
	
	health_bar = ProgressBar.new()
	health_bar.size = Vector2(150, 25)
	health_bar.min_value = 0
	health_bar.max_value = 100
	health_bar.value = 85  # Example value
	health_bar.show_percentage = false
	style_progress_bar(health_bar, Color.CRIMSON, Color.DARK_RED)
	health_container.add_child(health_bar)
	
	# Mana bar container
	var mana_container = HBoxContainer.new()
	mana_container.add_theme_constant_override("separation", 10)
	stat_container.add_child(mana_container)
	
	var mana_label = Label.new()
	mana_label.text = "🔮 MANA:"
	mana_label.add_theme_font_size_override("font_size", 16)
	mana_label.add_theme_color_override("font_color", Color.WHITE)
	mana_label.add_theme_color_override("font_shadow_color", Color.BLACK)
	mana_label.add_theme_constant_override("shadow_offset_x", 1)
	mana_label.add_theme_constant_override("shadow_offset_y", 1)
	mana_container.add_child(mana_label)
	
	mana_bar = ProgressBar.new()
	mana_bar.size = Vector2(150, 25)
	mana_bar.min_value = 0
	mana_bar.max_value = 100
	mana_bar.value = 65  # Example value
	mana_bar.show_percentage = false
	style_progress_bar(mana_bar, Color.BLUE, Color.DARK_BLUE)
	mana_container.add_child(mana_bar)

func style_progress_bar(bar: ProgressBar, fill_color: Color, border_color: Color):
	# Style progress bar with fantasy theme
	var bg_style = StyleBoxFlat.new()
	bg_style.bg_color = Color.BLACK
	bg_style.border_width_left = 2
	bg_style.border_width_right = 2
	bg_style.border_width_top = 2
	bg_style.border_width_bottom = 2
	bg_style.border_color = border_color
	bg_style.corner_radius_top_left = 4
	bg_style.corner_radius_top_right = 4
	bg_style.corner_radius_bottom_left = 4
	bg_style.corner_radius_bottom_right = 4
	
	var fill_style = StyleBoxFlat.new()
	fill_style.bg_color = fill_color
	fill_style.corner_radius_top_left = 4
	fill_style.corner_radius_top_right = 4
	fill_style.corner_radius_bottom_left = 4
	fill_style.corner_radius_bottom_right = 4
	
	bar.add_theme_stylebox_override("background", bg_style)
	bar.add_theme_stylebox_override("fill", fill_style)

func create_mini_map():
	# Create mini-map in top-right corner
	mini_map = Control.new()
	mini_map.name = "MiniMap"
	mini_map.size = Vector2(150, 150)
	mini_map.position = Vector2(get_viewport().size.x - 170, 20)
	game_ui.add_child(mini_map)
	
	# Mini-map background
	var map_bg = create_fantasy_panel(Vector2(150, 150))
	mini_map.add_child(map_bg)
	
	# Mini-map title
	var map_title = Label.new()
	map_title.text = "🗺️ MAP"
	map_title.position = Vector2(10, 5)
	map_title.add_theme_font_size_override("font_size", 14)
	map_title.add_theme_color_override("font_color", Color.WHITE)
	map_title.add_theme_color_override("font_shadow_color", Color.BLACK)
	map_title.add_theme_constant_override("shadow_offset_x", 1)
	map_title.add_theme_constant_override("shadow_offset_y", 1)
	mini_map.add_child(map_title)
	
	# Player dot on mini-map
	var player_dot = ColorRect.new()
	player_dot.size = Vector2(6, 6)
	player_dot.position = Vector2(72, 72)  # Center
	player_dot.color = Color.YELLOW
	mini_map.add_child(player_dot)

func create_enhanced_pause_menu():
	# Enhanced pause menu with fantasy styling
	if not pause_menu:
		pause_menu = Control.new()
		pause_menu.name = "PauseMenu"
		pause_menu.process_mode = Node.PROCESS_MODE_WHEN_PAUSED
		ui_layer.add_child(pause_menu)
	
	pause_menu.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	
	# Clear existing children
	for child in pause_menu.get_children():
		child.queue_free()
	
	# Semi-transparent background
	var bg = ColorRect.new()
	bg.color = Color(0, 0, 0, 0.8)
	bg.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	pause_menu.add_child(bg)
	
	# Pause menu panel
	var pause_panel = create_fantasy_panel(Vector2(400, 500))
	pause_panel.set_anchors_preset(Control.PRESET_CENTER)
	pause_panel.position = Vector2(-200, -250)
	pause_menu.add_child(pause_panel)
	
	# Content container
	var vbox = VBoxContainer.new()
	vbox.set_anchors_preset(Control.PRESET_CENTER)
	vbox.position = Vector2(-100, -200)
	vbox.size = Vector2(200, 400)
	vbox.add_theme_constant_override("separation", 20)
	pause_panel.add_child(vbox)
	
	# Title
	var title = Label.new()
	title.text = "⚔️ GAME PAUSED ⚔️"
	title.add_theme_font_size_override("font_size", 24)
	title.add_theme_color_override("font_color", Color.GOLD)
	title.add_theme_color_override("font_shadow_color", Color.BLACK)
	title.add_theme_constant_override("shadow_offset_x", 2)
	title.add_theme_constant_override("shadow_offset_y", 2)
	title.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	vbox.add_child(title)
	
	# Buttons
	var resume_btn = Button.new()
	resume_btn.text = "▶️ RESUME"
	resume_btn.custom_minimum_size = Vector2(200, 50)
	apply_fantasy_button_style(resume_btn)
	resume_btn.pressed.connect(_on_resume_pressed)
	vbox.add_child(resume_btn)
	
	var main_menu_btn = Button.new()
	main_menu_btn.text = "🏠 MAIN MENU"
	main_menu_btn.custom_minimum_size = Vector2(200, 50)
	apply_fantasy_button_style(main_menu_btn)
	main_menu_btn.pressed.connect(_on_main_menu_pressed)
	vbox.add_child(main_menu_btn)
	
	var quit_btn = Button.new()
	quit_btn.text = "🚪 QUIT GAME"
	quit_btn.custom_minimum_size = Vector2(200, 50)
	apply_fantasy_button_style(quit_btn)
	quit_btn.pressed.connect(_on_quit_pressed)
	vbox.add_child(quit_btn)

# Toolbar button handlers
func _on_inventory_pressed():
	print("🎒 INVENTORY button clicked!")
	# Placeholder for inventory system

func _on_character_pressed():
	print("⚔️ CHARACTER button clicked!")
	# Placeholder for character stats

func _on_skills_pressed():
	print("📜 SKILLS button clicked!")
	# Placeholder for skill tree

func _on_quests_pressed():
	print("🗺️ QUESTS button clicked!")
	# Placeholder for quest system

func _on_settings_pressed():
	print("⚙️ SETTINGS button clicked!")
	# Could open the options menu or a simplified in-game settings

func generate_environment():
	# Generate a simple grassy field with trees for testing
	print("Generating test environment...")
	
	# Create grass background
	create_grass_field()
	
	# Create scattered trees
	create_trees()
	
	# Create some decorative elements
	create_decorations()
	
	print("Environment generation complete")

func create_grass_field():
	# Try to use Legacy Fantasy background first
	print("Attempting to load Legacy Fantasy background...")
	var background_texture = load("res://assets/sprites/Background.png")
	print("Background texture loaded: ", background_texture != null)
	
	if background_texture:
		# Use the Legacy Fantasy background texture
		var bg_sprite = Sprite2D.new()
		bg_sprite.texture = background_texture
		bg_sprite.global_position = Vector2.ZERO
		# Scale the background to cover the level area
		var bg_scale = max(level_bounds.size.x / background_texture.get_width(), 
						   level_bounds.size.y / background_texture.get_height()) * 1.5
		bg_sprite.scale = Vector2(bg_scale, bg_scale)
		level_background.add_child(bg_sprite)
	else:
		# Fallback to procedural grass tiles
		var grass_size = 64
		var field_width = int(level_bounds.size.x / grass_size)
		var field_height = int(level_bounds.size.y / grass_size)
		
		for x in range(field_width):
			for y in range(field_height):
				var grass_patch = create_grass_sprite()
				var pos = Vector2(
					level_bounds.position.x + x * grass_size,
					level_bounds.position.y + y * grass_size
				)
				grass_patch.global_position = pos
				level_background.add_child(grass_patch)
				grass_patches.append(grass_patch)

func create_grass_sprite() -> Sprite2D:
	# Create a placeholder grass sprite
	var sprite = Sprite2D.new()
	
	# Create simple grass texture
	var image = Image.create(64, 64, false, Image.FORMAT_RGBA8)
	var grass_colors = [
		Color.FOREST_GREEN,
		Color.OLIVE_DRAB,
		Color.DARK_OLIVE_GREEN,
		Color.YELLOW_GREEN
	]
	
	# Fill with random grass color
	var color = grass_colors[randi() % grass_colors.size()]
	image.fill(color)
	
	# Add some texture variation
	for i in range(20):
		var px = randi() % 64
		var py = randi() % 64
		var variation_color = color.lightened(randf_range(-0.3, 0.3))
		image.set_pixel(px, py, variation_color)
	
	var texture = ImageTexture.new()
	texture.set_image(image)
	sprite.texture = texture
	
	return sprite

func create_trees():
	# Create sparse, patchy tree clusters throughout the level
	var tree_clusters = 6  # Number of tree clusters
	
	for cluster in range(tree_clusters):
		# Pick a random cluster center
		var cluster_center = Vector2(
			randf_range(level_bounds.position.x + 200, level_bounds.position.x + level_bounds.size.x - 200),
			randf_range(level_bounds.position.y + 200, level_bounds.position.y + level_bounds.size.y - 200)
		)
		
		# Create trees in this cluster
		var cluster_size = int(randf_range(2.0, 6.0))
		for i in range(cluster_size):
			var tree = create_tree_sprite()
			# Scatter trees around cluster center
			var offset = Vector2(
				randf_range(-120, 120),
				randf_range(-120, 120)
			)
			tree.global_position = cluster_center + offset
			add_child(tree)  # Add to main level node for proper z-ordering
			trees.append(tree)

func create_tree_sprite() -> StaticBody2D:
	# Create a tree with collision
	var tree_body = StaticBody2D.new()
	
	# Tree sprite
	var sprite = Sprite2D.new()
	var tree_texture = create_tree_texture()
	sprite.texture = tree_texture
	sprite.position = Vector2.ZERO
	
	# Scale down the Legacy Fantasy trees as they are quite large
	if tree_texture.get_width() > 100:  # Legacy Fantasy trees
		sprite.scale = Vector2(0.5, 0.5)
	
	tree_body.add_child(sprite)
	
	# Tree collision - adjusted for Legacy Fantasy tree size
	var collision = CollisionShape2D.new()
	var shape = RectangleShape2D.new()
	if tree_texture.get_width() > 100:  # Legacy Fantasy trees
		shape.size = Vector2(40, 30)  # Larger collision for bigger trees
		collision.position = Vector2(0, 40)  # Adjust position for tree base
	else:
		shape.size = Vector2(30, 20)  # Original size for placeholder trees
		collision.position = Vector2(0, 10)
	collision.shape = shape
	tree_body.add_child(collision)
	
	return tree_body

func create_tree_texture() -> Texture2D:
	# Try to load Legacy Fantasy tree assets first
	var tree_textures = [
		"res://assets/sprites/Green-Tree.png",
		"res://assets/sprites/Yellow-Tree.png",
		"res://assets/sprites/Red-Tree.png",
		"res://assets/sprites/Golden-Tree.png",
		"res://assets/sprites/Dark-Tree.png"
	]
	
	# Randomly select a tree texture
	var texture_path = tree_textures[randi() % tree_textures.size()]
	var loaded_texture = load(texture_path)
	
	if loaded_texture:
		print("Successfully loaded tree texture: ", texture_path)
		# Return the loaded Legacy Fantasy tree texture
		return loaded_texture
	else:
		# Fallback to generated tree texture
		var image = Image.create(48, 80, false, Image.FORMAT_RGBA8)
		image.fill(Color.TRANSPARENT)
		
		# Draw trunk (brown rectangle)
		for x in range(18, 30):
			for y in range(60, 80):
				image.set_pixel(x, y, Color.SADDLE_BROWN)
		
		# Draw foliage (green circle)
		var center = Vector2(24, 30)
		var radius = 20
		
		for x in range(48):
			for y in range(60):
				var distance = Vector2(x, y).distance_to(center)
				if distance <= radius:
					var green_variations = [Color.FOREST_GREEN, Color.DARK_GREEN, Color.OLIVE_DRAB]
					var color = green_variations[randi() % green_variations.size()]
					image.set_pixel(x, y, color)
		
		var fallback_texture = ImageTexture.new()
		fallback_texture.set_image(image)
		return fallback_texture

func create_decorations():
	# Add rock clusters and some flowers
	create_rock_clusters()
	create_flower_patches()

func create_rock_clusters():
	# Create several rock clusters around the level
	var rock_clusters = 8
	
	for cluster in range(rock_clusters):
		# Pick a random cluster center
		var cluster_center = Vector2(
			randf_range(level_bounds.position.x + 150, level_bounds.position.x + level_bounds.size.x - 150),
			randf_range(level_bounds.position.y + 150, level_bounds.position.y + level_bounds.size.y - 150)
		)
		
		# Create rocks in this cluster
		var rocks_in_cluster = int(randf_range(3.0, 8.0))
		for i in range(rocks_in_cluster):
			var rock = create_rock_body()
			# Scatter rocks around cluster center
			var offset = Vector2(
				randf_range(-80, 80),
				randf_range(-80, 80)
			)
			rock.global_position = cluster_center + offset
			add_child(rock)  # Add to main level for collision

func create_flower_patches():
	# Add some scattered flower decorations
	var flower_patches = 12
	
	for i in range(flower_patches):
		var flower = create_decoration_sprite()
		var random_pos = Vector2(
			randf_range(level_bounds.position.x + 100, level_bounds.position.x + level_bounds.size.x - 100),
			randf_range(level_bounds.position.y + 100, level_bounds.position.y + level_bounds.size.y - 100)
		)
		flower.global_position = random_pos
		level_background.add_child(flower)

func create_enhanced_rock_texture() -> Texture2D:
	# Create larger, more detailed rocks for clusters
	var size = int(randf_range(32.0, 48.0))  # Variable rock sizes
	var image = Image.create(size, size, false, Image.FORMAT_RGBA8)
	image.fill(Color.TRANSPARENT)
	
	# Rock color variations
	var rock_colors = [
		Color(0.5, 0.5, 0.5),      # Medium gray
		Color(0.4, 0.4, 0.4),      # Dark gray
		Color(0.6, 0.6, 0.6),      # Light gray
		Color(0.45, 0.4, 0.35),    # Brown-gray
		Color(0.35, 0.35, 0.4)     # Blue-gray
	]
	
	# Create roughly circular rock shape
	var center = Vector2(size/2, size/2)
	var base_radius = size * 0.35
	
	for x in range(size):
		for y in range(size):
			var distance = Vector2(x, y).distance_to(center)
			var noise_factor = randf_range(0.7, 1.3)  # Add randomness to shape
			
			if distance <= base_radius * noise_factor:
				var color = rock_colors[randi() % rock_colors.size()]
				# Add some texture variation
				color = color.lightened(randf_range(-0.2, 0.2))
				image.set_pixel(x, y, color)
	
	var texture = ImageTexture.new()
	texture.set_image(image)
	return texture

func create_rock_texture() -> Texture2D:
	# Keep the old function for compatibility
	return create_enhanced_rock_texture()

func create_rock_body() -> StaticBody2D:
	# Create a rock with collision for clusters
	var rock_body = StaticBody2D.new()
	
	# Rock sprite
	var sprite = Sprite2D.new()
	sprite.texture = create_enhanced_rock_texture()
	sprite.position = Vector2.ZERO
	rock_body.add_child(sprite)
	
	# Rock collision
	var collision = CollisionShape2D.new()
	var shape = CircleShape2D.new()
	shape.radius = 20 + randf_range(-5, 10)  # Variable rock sizes
	collision.shape = shape
	collision.position = Vector2(0, 5)  # Slightly offset for natural look
	rock_body.add_child(collision)
	
	return rock_body

func create_decoration_sprite() -> Sprite2D:
	# Create simple decorative elements (flowers only now)
	var sprite = Sprite2D.new()
	sprite.texture = create_flower_texture()
	return sprite

func create_flower_texture() -> Texture2D:
	var image = Image.create(16, 16, false, Image.FORMAT_RGBA8)
	image.fill(Color.TRANSPARENT)
	
	# Draw small flowers
	var flower_colors = [Color.YELLOW, Color.PINK, Color.WHITE, Color.PURPLE]
	
	for i in range(5):
		var x = randi() % 16
		var y = randi() % 16
		var color = flower_colors[randi() % flower_colors.size()]
		image.set_pixel(x, y, color)
		# Add petals
		if x > 0: image.set_pixel(x-1, y, color.darkened(0.3))
		if x < 15: image.set_pixel(x+1, y, color.darkened(0.3))
		if y > 0: image.set_pixel(x, y-1, color.darkened(0.3))
		if y < 15: image.set_pixel(x, y+1, color.darkened(0.3))
	
	var texture = ImageTexture.new()
	texture.set_image(image)
	return texture

# Pause functionality
func toggle_pause():
	is_paused = !is_paused
	
	if is_paused:
		get_tree().paused = true
		if pause_menu:
			pause_menu.visible = true
		print("Game paused")
	else:
		get_tree().paused = false
		if pause_menu:
			pause_menu.visible = false
		print("Game resumed")

func _on_resume_pressed():
	print("Resume button clicked")
	toggle_pause()

func _on_main_menu_pressed():
	print("Main Menu button clicked")
	# Return to main menu
	get_tree().paused = false
	GameManager.goto_scene(GameManager.MAIN_MENU_SCENE)

func _on_quit_pressed():
	print("Quit button clicked")
	# Quit the game entirely
	get_tree().paused = false
	GameManager.quit_game()

# Input handling
func _input(event):
	if event.is_action_pressed("ui_cancel"):  # ESC key
		print("ESC key pressed - toggling pause")
		toggle_pause()

# Debug information
func _draw():
	if Engine.is_editor_hint():
		return
	
	# Draw level bounds for debugging
	draw_rect(level_bounds, Color.RED, false, 2.0) 
