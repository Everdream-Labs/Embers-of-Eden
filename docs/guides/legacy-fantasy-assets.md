# Legacy Fantasy — High Forest 2.3 assets

## Expected layout in this project

```
assets/sprites/
├── Idle-Sheet.png
├── Run-Sheet.png
├── Background.png
├── Green-Tree.png
├── Yellow-Tree.png
├── Red-Tree.png
├── Golden-Tree.png
└── Dark-Tree.png
```

`PlayerController.gd` and `TestLevel.gd` load these paths. `MainMenu` uses `Background.png`.

## Source pack (on your machine)

If files are missing, copy from:

`C:\Users\Brett Hurst\Documents\AI\Files\Animations\Sprites\Legacy-Fantasy - High Forest 2.3\`

- Character idle/run sheets → `assets/sprites/`
- Tree PNGs → `assets/sprites/`
- `Background\Background.png` → `assets/sprites/Background.png`

## Code touchpoints

- `scripts/player/PlayerController.gd` — idle/run sprite sheets
- `scripts/TestLevel.gd` — background and tree placement
- `scripts/menus/MainMenu.gd` — menu background

After copying assets, open the project in Godot once so imports regenerate.
