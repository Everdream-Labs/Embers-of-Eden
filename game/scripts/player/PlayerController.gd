extends CharacterBody2D
# PlayerController.gd
# Handles player movement, animations, and input for 8-directional isometric movement
# Author: Embers of Eden Team

class_name PlayerController

# Movement properties
@export var speed: float = 200.0
@export var acceleration: float = 800.0
@export var friction: float = 800.0

# Animation directions for 8-directional movement
enum Direction {
	IDLE,
	UP,
	DOWN,
	LEFT,
	RIGHT,
	UP_LEFT,
	UP_RIGHT,
	DOWN_LEFT,
	DOWN_RIGHT
}

# Node references (will be set in _ready)
var animated_sprite: AnimatedSprite2D
var collision_shape: CollisionShape2D

# Movement state
var current_direction: Direction = Direction.IDLE
var last_direction: Direction = Direction.DOWN  # Default facing direction
var input_vector: Vector2 = Vector2.ZERO
var is_moving: bool = false

func _ready():
	print("=== PLAYER SETUP DEBUG ===")
	print("Player scene loading...")
	
	# Get references to child nodes
	animated_sprite = $AnimatedSprite2D
	collision_shape = $CollisionShape2D
	
	if animated_sprite:
		print("AnimatedSprite2D found")
		if animated_sprite.sprite_frames:
			var available_anims = animated_sprite.sprite_frames.get_animation_names()
			print("SpriteFrames resource pre-loaded with animations: ", available_anims)
			
			# Show frame counts for each animation
			for anim_name in available_anims:
				var frame_count = animated_sprite.sprite_frames.get_frame_count(anim_name)
				print("  - '", anim_name, "': ", frame_count, " frames")
		else:
			print("No SpriteFrames resource found in scene - will create one")
	else:
		print("ERROR: AnimatedSprite2D not found!")
		return
	
	# Set up animations
	setup_animations()
	
	# Final animation check
	if animated_sprite and animated_sprite.sprite_frames:
		var final_anims = animated_sprite.sprite_frames.get_animation_names()
		print("Final available animations: ", final_anims)
		
		# Start with first available animation
		if final_anims.size() > 0:
			var default_anim = final_anims[0]
			print("Starting with animation: ", default_anim)
			animated_sprite.play(default_anim)
		else:
			print("ERROR: No animations available!")
	
	print("==========================")

func _physics_process(delta):
	handle_input()
	handle_movement(delta)
	update_animations()

func handle_input():
	# Get input from both keyboard and controller
	input_vector = Vector2.ZERO
	
	# Keyboard input (WASD and Arrow keys)
	if Input.is_action_pressed("move_up"):
		input_vector.y -= 1
	if Input.is_action_pressed("move_down"):
		input_vector.y += 1
	if Input.is_action_pressed("move_left"):
		input_vector.x -= 1
	if Input.is_action_pressed("move_right"):
		input_vector.x += 1
	
	# Controller analog stick input
	var joy_vector = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if joy_vector.length() > 0.1:  # Deadzone
		input_vector = joy_vector
	
	# Normalize diagonal movement to prevent faster diagonal movement
	if input_vector.length() > 1.0:
		input_vector = input_vector.normalized()
	
	# Update movement state
	is_moving = input_vector.length() > 0.1
	
	# Determine current direction
	update_direction()

func update_direction():
	if not is_moving:
		current_direction = Direction.IDLE
		return
	
	# Determine direction based on input vector
	# For simplicity with the Legacy Fantasy sprites, we'll use 4 main directions
	if abs(input_vector.x) > abs(input_vector.y):
		if input_vector.x > 0:
			current_direction = Direction.RIGHT
			last_direction = Direction.RIGHT
		else:
			current_direction = Direction.LEFT
			last_direction = Direction.LEFT
	else:
		if input_vector.y > 0:
			current_direction = Direction.DOWN
			last_direction = Direction.DOWN
		else:
			current_direction = Direction.UP
			last_direction = Direction.UP

func handle_movement(delta):
	if is_moving:
		# Apply acceleration towards target velocity
		var target_velocity = input_vector * speed
		velocity = velocity.move_toward(target_velocity, acceleration * delta)
	else:
		# Apply friction when not moving
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)
	
	# Move the character
	move_and_slide()

func update_animations():
	if not animated_sprite or not animated_sprite.sprite_frames:
		return
	
	var sprite_frames = animated_sprite.sprite_frames
	var available_anims = sprite_frames.get_animation_names()
	
	# Play appropriate animation based on current direction and state
	if is_moving:
		# Try to find a movement animation (check multiple possible names)
		var walk_anim = ""
		var movement_names = ["Side Walk", "run", "walk", "Run", "Walk"]
		
		for anim_name in movement_names:
			if sprite_frames.has_animation(anim_name) and sprite_frames.get_frame_count(anim_name) > 0:
				walk_anim = anim_name
				break
		
		if walk_anim != "" and animated_sprite.animation != walk_anim:
			animated_sprite.play(walk_anim)
			print("Playing movement animation: ", walk_anim)
		
		# Flip sprite based on direction
		if current_direction == Direction.LEFT:
			animated_sprite.flip_h = true
		elif current_direction == Direction.RIGHT:
			animated_sprite.flip_h = false
	else:
		# Try to find an idle animation (check multiple possible names)
		var idle_anim = ""
		var idle_names = ["Idle", "idle", "default"]
		
		for anim_name in idle_names:
			if sprite_frames.has_animation(anim_name) and sprite_frames.get_frame_count(anim_name) > 0:
				idle_anim = anim_name
				break
		
		# If no specific idle animation, use the first available animation
		if idle_anim == "" and available_anims.size() > 0:
			idle_anim = available_anims[0]
			print("No idle animation found, using: ", idle_anim)
		
		if idle_anim != "" and animated_sprite.animation != idle_anim:
			animated_sprite.play(idle_anim)
			print("Playing idle animation: ", idle_anim)
		
		# Maintain flip state from last movement
		if last_direction == Direction.LEFT:
			animated_sprite.flip_h = true
		elif last_direction == Direction.RIGHT:
			animated_sprite.flip_h = false

func setup_animations():
	# Setup animations - sprite_frames should be assigned in scene
	if not animated_sprite:
		return
		
	if not animated_sprite.sprite_frames:
		print("Warning: No SpriteFrames resource assigned to player!")
		animated_sprite.sprite_frames = SpriteFrames.new()
		
		# Only create automatic sprites if no resource was assigned
		print("Creating automatic sprites...")
		if load_legacy_fantasy_sprites(animated_sprite.sprite_frames):
			print("Loaded Legacy Fantasy character sprites")
		else:
			setup_placeholder_animations(animated_sprite.sprite_frames)
			print("Using placeholder character sprites")
		return
	
	var sprite_frames = animated_sprite.sprite_frames
	var animation_names = sprite_frames.get_animation_names()
	
	print("PlayerSpriteFrames resource loaded with animations: ", animation_names)
	
	# Check if animations have actual frames
	var has_frames = false
	for anim_name in animation_names:
		var frame_count = sprite_frames.get_frame_count(anim_name)
		print("  - Animation '", anim_name, "': ", frame_count, " frames")
		if frame_count > 0:
			has_frames = true
	
	if has_frames:
		print("✓ Custom sprite animations are ready! Using PlayerSpriteFrames.tres")
	else:
		print("⚠ PlayerSpriteFrames.tres exists but has no frames - this should not happen!")
	
	# Never override custom SpriteFrames resource - always use what's configured in the scene

func load_legacy_fantasy_sprites(sprite_frames: SpriteFrames) -> bool:
	# Try to load the Legacy Fantasy sprite sheets
	print("Attempting to load Legacy Fantasy sprites...")
	var idle_texture = load("res://assets/sprites/Idle-Sheet.png")
	var run_texture = load("res://assets/sprites/Run-Sheet.png")
	
	print("Idle texture loaded: ", idle_texture != null)
	print("Run texture loaded: ", run_texture != null)
	
	if idle_texture and run_texture:
		# Clear existing animations
		for anim_name in sprite_frames.get_animation_names():
			sprite_frames.remove_animation(anim_name)
		
		# Set up idle animation - Legacy Fantasy Idle sheet is 4 frames horizontal
		sprite_frames.add_animation("idle")
		setup_sprite_sheet_animation(sprite_frames, "idle", idle_texture, 4, 1, 3.0)
		
		# Set up run animation - Legacy Fantasy Run sheet is 6 frames horizontal  
		sprite_frames.add_animation("run")
		setup_sprite_sheet_animation(sprite_frames, "run", run_texture, 6, 1, 10.0)
		
		print("Successfully loaded Legacy Fantasy character sprites")
		return true
	
	return false

func setup_sprite_sheet_animation(sprite_frames: SpriteFrames, anim_name: String, texture: Texture2D, h_frames: int, v_frames: int, fps: float):
	# Calculate frame size
	var frame_width = texture.get_width() / h_frames
	var frame_height = texture.get_height() / v_frames
	
	# Add each frame to the animation
	for i in range(h_frames * v_frames):
		var x = (i % h_frames) * frame_width
		var y = (i / h_frames) * frame_height
		
		var atlas_texture = AtlasTexture.new()
		atlas_texture.atlas = texture
		atlas_texture.region = Rect2(x, y, frame_width, frame_height)
		
		sprite_frames.add_frame(anim_name, atlas_texture)
	
	sprite_frames.set_animation_speed(anim_name, fps)
	sprite_frames.set_animation_loop(anim_name, true)

func setup_placeholder_animations(sprite_frames: SpriteFrames):
	# This creates placeholder colored rectangles for testing
	# Replace with actual sprite loading once you have art assets
	
	# Create idle animation
	if not sprite_frames.has_animation("idle"):
		sprite_frames.add_animation("idle")
		var texture = create_placeholder_texture(Color.BLUE, 32, 32)
		sprite_frames.add_frame("idle", texture)
		sprite_frames.set_animation_speed("idle", 1.0)
	
	# Create run animation
	if not sprite_frames.has_animation("run"):
		sprite_frames.add_animation("run")
		# Create simple 2-frame animation
		for frame in range(2):
			var frame_color = Color.BLUE.lightened(0.2 if frame == 1 else 0.0)
			var texture = create_placeholder_texture(frame_color, 32, 32)
			sprite_frames.add_frame("run", texture)
		sprite_frames.set_animation_speed("run", 8.0)
		sprite_frames.set_animation_loop("run", true)

func create_placeholder_texture(color: Color, width: int, height: int) -> Texture2D:
	# Create a simple colored rectangle as a placeholder sprite
	var image = Image.create(width, height, false, Image.FORMAT_RGBA8)
	image.fill(color)
	
	var texture = ImageTexture.new()
	texture.set_image(image)
	return texture

# Utility functions for external scripts
func get_current_direction() -> Direction:
	return current_direction if is_moving else last_direction

func get_is_moving() -> bool:
	return is_moving

func set_position_smooth(target_position: Vector2, duration: float = 0.5):
	# Smooth position transition (useful for cutscenes or teleporting)
	var tween = create_tween()
	tween.tween_property(self, "global_position", target_position, duration)
	await tween.finished

# Debug function
func _draw():
	if Engine.is_editor_hint():
		return
	
	# Draw movement direction for debugging
	if is_moving and input_vector.length() > 0:
		draw_line(Vector2.ZERO, input_vector * 50, Color.WHITE, 2.0) 
