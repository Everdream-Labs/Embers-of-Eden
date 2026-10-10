# 🎨 PLAYER SPRITE EDITING GUIDE - EMBERS OF EDEN

## How to Edit Player Sprites

### 📁 **Quick Access Method**

1. **Open Player Scene**:
   - In Godot, navigate to `scenes/player/Player.tscn`
   - Double-click to open the scene

2. **Access Sprite Editor**:
   - Click on the `AnimatedSprite2D` node in the scene tree
   - In the Inspector, find the `Sprite Frames` property
   - Click on the SpriteFrames resource (should show `PlayerSpriteFrames.tres`)
   - Click the dropdown arrow or edit button to open the SpriteFrames editor

### 🖼️ **Adding New Sprite Sheets**

#### **Method 1: Replace Current Sprites**
1. **Import Your Sprite Sheets**:
   - Drag your sprite sheet images into `assets/sprites/` folder
   - Recommended format: PNG files
   - Naming convention: `YourCharacter-Idle.png`, `YourCharacter-Run.png`

2. **Edit Animations**:
   - In SpriteFrames editor, select "idle" animation
   - Click "Add Frame" and select your idle sprite sheet
   - Set up frame regions if using sprite sheets
   - Repeat for "run" animation

#### **Method 2: Direct SpriteFrames Editing**
1. **Open SpriteFrames Resource**:
   - Navigate to `assets/player/PlayerSpriteFrames.tres`
   - Double-click to open in SpriteFrames editor

2. **Configure Animations**:
   - **Idle Animation**: 3-6 frames, 3-5 FPS for gentle breathing
   - **Run Animation**: 6-8 frames, 8-12 FPS for smooth movement

### 🎮 **Current Setup**

The player currently supports:
- **Idle Animation**: Gentle breathing/standing animation
- **Run Animation**: Movement animation with directional flipping
- **Automatic Loading**: Tries Legacy Fantasy sprites first, then fallbacks

### 📋 **Sprite Sheet Specifications**

#### **Recommended Dimensions**:
- **Character Size**: 32x32 to 64x64 pixels per frame
- **Sprite Sheet**: Horizontal layout (frames side by side)
- **Format**: PNG with transparency

#### **Animation Frame Counts**:
- **Idle**: 4 frames (Legacy Fantasy standard)
- **Run**: 6 frames (Legacy Fantasy standard)

### 🔧 **Advanced Editing**

#### **Adding New Animations**:
1. Open SpriteFrames editor
2. Click "Add Animation"
3. Name it (e.g., "attack", "jump", "death")
4. Add frames and set speed
5. Update PlayerController.gd to use new animations

#### **Custom Character Integration**:
```gdscript
# In PlayerController.gd, modify load_legacy_fantasy_sprites():
var idle_texture = load("res://assets/sprites/YourCharacter-Idle.png")
var run_texture = load("res://assets/sprites/YourCharacter-Run.png")
```

### 🎯 **Testing Your Sprites**

1. **Save Changes**: Ctrl+S in SpriteFrames editor
2. **Run Game**: F5 or play button
3. **Test Movement**: Use WASD to see run animation
4. **Test Idle**: Stop moving to see idle animation

### 📁 **File Structure**
```
assets/
├── player/
│   └── PlayerSpriteFrames.tres     # Main sprite resource
├── sprites/
│   ├── Idle-Sheet.png              # Current idle sprites
│   ├── Run-Sheet.png               # Current run sprites
│   └── [Your-Character-Sprites]    # Your custom sprites
```

### 🎨 **Visual Editor Access**

**In Godot Editor**:
1. Select Player scene in FileSystem
2. Open scene (double-click)
3. Click AnimatedSprite2D node
4. Inspector → Sprite Frames → Click edit button
5. Visual sprite frame editor opens!

### 💡 **Pro Tips**

- **Preview**: Use the play button in SpriteFrames editor to preview animations
- **Frame Timing**: Adjust "Speed (FPS)" for each animation
- **Looping**: Most animations should loop except special ones like "death"
- **Pivot Point**: Center sprites for best rotation/scaling
- **Collision**: Adjust collision shape in Player scene if character size changes

**Quick Edit Button**: In the Player scene, the AnimatedSprite2D inspector has a quick edit button for immediate sprite access! 