# Embers of Eden

2D isometric fantasy adventure built with **Godot 4.4**.

## Open the project

1. Install [Godot 4.4](https://godotengine.org/) or newer.
2. In Godot: **Import** → select `project.godot` in this folder.
3. Press **F5** to run (main scene: `scenes/World.tscn`).

## Layout

| Path | Purpose |
|------|---------|
| `scenes/` | World, player, props, menus |
| `scripts/` | Game logic (`PlayerController`, menus, `GameManager`) |
| `assets/` | Sprites, audio, UI art |

Menu scenes live under `scenes/menus/`; wire `run/main_scene` to `MainMenu.tscn` when you want a menu-first flow.

## Version control

Remote: [Everdream-Labs/Embers-of-Eden](https://github.com/Everdream-Labs/Embers-of-Eden)

Use **GitHub Desktop** → **Add** → **Add Existing Repository** → this folder, then **Push origin** if needed.
