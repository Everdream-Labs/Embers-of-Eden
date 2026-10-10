# Asset Setup Instructions for Legacy Fantasy - High Forest 2.3

Due to terminal limitations, please manually copy the following files to make the game beautiful with the Legacy Fantasy assets.

## 📁 **Manual File Copying Required**

### **Step 1: Character Sprites**
Copy these files from:
```
C:\Users\Brett Hurst\Documents\AI\Files\Animations\Sprites\Legacy-Fantasy - High Forest 2.3\Character\
```

**To:** `embers-of-eden\assets\sprites\`

**Files to copy:**
- `Idle\Idle-Sheet.png` → `Idle-Sheet.png`
- `Run\Run-Sheet.png` → `Run-Sheet.png`

### **Step 2: Environment Assets**
Copy these files from:
```
C:\Users\Brett Hurst\Documents\AI\Files\Animations\Sprites\Legacy-Fantasy - High Forest 2.3\
```

**Tree Sprites (Trees folder):**
- `Trees\Green-Tree.png` → `assets\sprites\Green-Tree.png`
- `Trees\Yellow-Tree.png` → `assets\sprites\Yellow-Tree.png`
- `Trees\Red-Tree.png` → `assets\sprites\Red-Tree.png`
- `Trees\Golden-Tree.png` → `assets\sprites\Golden-Tree.png`
- `Trees\Dark-Tree.png` → `assets\sprites\Dark-Tree.png`

**Background (Background folder):**
- `Background\Background.png` → `assets\sprites\Background.png`

## 🎯 **Quick Copy Commands (Alternative)**

If your terminal is working, you can use these PowerShell commands:

```powershell
# Navigate to game directory
cd "X:\Storage\Current Projects\Embers of Eden\embers-of-eden"

# Copy character sprites
copy "C:\Users\Brett Hurst\Documents\AI\Files\Animations\Sprites\Legacy-Fantasy - High Forest 2.3\Character\Idle\Idle-Sheet.png" "assets\sprites\"
copy "C:\Users\Brett Hurst\Documents\AI\Files\Animations\Sprites\Legacy-Fantasy - High Forest 2.3\Character\Run\Run-Sheet.png" "assets\sprites\"

# Copy tree sprites
copy "C:\Users\Brett Hurst\Documents\AI\Files\Animations\Sprites\Legacy-Fantasy - High Forest 2.3\Trees\Green-Tree.png" "assets\sprites\"
copy "C:\Users\Brett Hurst\Documents\AI\Files\Animations\Sprites\Legacy-Fantasy - High Forest 2.3\Trees\Yellow-Tree.png" "assets\sprites\"
copy "C:\Users\Brett Hurst\Documents\AI\Files\Animations\Sprites\Legacy-Fantasy - High Forest 2.3\Trees\Red-Tree.png" "assets\sprites\"
copy "C:\Users\Brett Hurst\Documents\AI\Files\Animations\Sprites\Legacy-Fantasy - High Forest 2.3\Trees\Golden-Tree.png" "assets\sprites\"
copy "C:\Users\Brett Hurst\Documents\AI\Files\Animations\Sprites\Legacy-Fantasy - High Forest 2.3\Trees\Dark-Tree.png" "assets\sprites\"

# Copy background
copy "C:\Users\Brett Hurst\Documents\AI\Files\Animations\Sprites\Legacy-Fantasy - High Forest 2.3\Background\Background.png" "assets\sprites\"
```

## ✅ **After Copying Assets:**

1. **Open Godot 4.3**
2. **Import the project** (project.godot)
3. **Let Godot import the new sprites** (this may take a moment)
4. **Run the game** (F5)

## 🎨 **What You'll See:**

### **Before (Placeholder):**
- Blue rectangle character
- Generated grass tiles
- Simple colored tree shapes

### **After (Legacy Fantasy Assets):**
- Beautiful animated character with:
  - Smooth idle animation
  - Running animation with proper frames
  - Horizontal flipping for left/right movement
- Gorgeous fantasy background
- Variety of colorful fantasy trees (Green, Yellow, Red, Golden, Dark)

## 🔧 **Technical Details:**

The game code has been updated to:
- **Automatically detect** Legacy Fantasy sprites
- **Load sprite sheets** and split them into animation frames
- **Fallback gracefully** to placeholder art if sprites aren't found
- **Use atlas textures** for efficient frame management
- **Apply proper scaling** for the background texture

## 🎮 **Enhanced Gameplay:**

With the Legacy Fantasy assets, you'll experience:
- **Immersive Fantasy World**: Beautiful forest environment
- **Smooth Character Animation**: Professional sprite animations
- **Visual Variety**: Multiple tree types create a rich landscape
- **Cohesive Art Style**: All assets work together harmoniously

## 📁 **Final File Structure:**

After copying, your assets folder should look like:
```
assets/
└── sprites/
    ├── Idle-Sheet.png       # Character idle animation
    ├── Run-Sheet.png        # Character run animation
    ├── Background.png       # Fantasy forest background
    ├── Green-Tree.png       # Tree variety 1
    ├── Yellow-Tree.png      # Tree variety 2
    ├── Red-Tree.png         # Tree variety 3
    ├── Golden-Tree.png      # Tree variety 4
    └── Dark-Tree.png        # Tree variety 5
```

## 🚀 **Ready to Play!**

Once the assets are copied, your isometric fantasy game will be transformed from placeholder art to a beautiful, professional-looking adventure game ready for further development and Steam deployment! 