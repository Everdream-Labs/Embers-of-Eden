# Player sprite editing

## Quick access

1. Open `scenes/player/Player.tscn` in Godot.
2. Select the `AnimatedSprite2D` node.
3. In the Inspector, open **Sprite Frames** (`PlayerSpriteFrames.tres`) in the SpriteFrames editor.

## Adding sprite sheets

### Replace current sprites

1. Drop PNG sheets into `assets/sprites/` (e.g. `YourCharacter-Idle.png`, `YourCharacter-Run.png`).
2. In SpriteFrames, configure **idle** and **run** (or **Idle** / **Side Walk**) with frame regions as needed.

### Edit the resource directly

Open `assets/player/PlayerSpriteFrames.tres` in the SpriteFrames editor.

- **Idle**: ~3–6 frames, ~3–5 FPS  
- **Run / walk**: ~6–8 frames, ~8–12 FPS  

## Current behaviour

- Idle and run (or Legacy Fantasy sheet parsing via `PlayerController.gd`).
- Horizontal flip for left/right movement.
- Animation name fallbacks: `Idle` / `Side Walk` vs `idle` / `run`.

## Specifications

- Frame size: 32×32–64×64 typical.
- Horizontal strip sheets, PNG with alpha.
- Legacy Fantasy defaults: 4 idle frames, 6 run frames.

## New animations

1. Add animation in SpriteFrames editor.
2. Wire playback in `PlayerController.gd` (e.g. attack, interact).

```gdscript
var idle_texture = load("res://assets/sprites/YourCharacter-Idle.png")
var run_texture = load("res://assets/sprites/YourCharacter-Run.png")
```

## File layout

```
assets/
├── player/PlayerSpriteFrames.tres
└── sprites/
    ├── Idle-Sheet.png
    ├── Run-Sheet.png
    └── …
```

## Tips

- Preview animations in the SpriteFrames editor.
- Center pivot for movement; resize `CollisionShape2D` if the character scale changes.
