# Planned features and design targets

Curated from early development notes. Not all of this is implemented yet; it is the **intended direction** for Embers of Eden.

## Core game

- 2D isometric fantasy adventure (Godot 4.4+).
- 8-directional movement (keyboard, gamepad).
- Main menu → options / credits → game world (menus exist; main scene may still boot `World.tscn` during prototyping).
- Settings persistence (audio, display, gameplay) via `GameManager`.
- Steam-ready Windows target when scope allows.

## Main menu and UI (fantasy / parchment theme)

- Golden title with outline, shadow, subtle float animation.
- Forest background with dark overlay for readability.
- Large bronze/gold buttons with hover/press scale and tweens.
- Button click and hover audio (placeholder or final SFX).
- Floating particle accents on the menu.
- Fade transitions between scenes.

## In-game HUD (planned / partial)

- Bottom toolbar: inventory, character, skills, quests, settings.
- Top-left health and mana bars with clear labels.
- Mini-map (corner placement, non-intrusive).
- Pause menu (ESC): resume, options, main menu.
- Styling consistent with main menu (parchment, warm palette).

## World and environment

- Legacy Fantasy trees (multiple color variants) in **clusters**, not uniform grids.
- Rock clusters with collision (variable sizes, natural placement).
- Decorative flowers (visual only, no collision).
- Camera zoom tuned for readable character detail (notes referenced ~3× for test levels).
- Isometric or tile-based ground; `World.tscn` uses grass backdrop and placed props.

## Player and animation

- `PlayerController` supports 8 directions and animation name fallbacks (`Idle` / `Side Walk` vs `idle` / `run`).
- Primary scene for scripted player: `scenes/player/Player.tscn` + `PlayerSpriteFrames.tres`.
- World prototype may use `scenes/player.tscn` with x320p sheet experiments — converge on one player scene over time.
- x320p character sheets under `assets/sprites/Characters/` for sword, bow, unarmed, walk cycles.

## Options menu

- Sections: audio (master, SFX, music), display (fullscreen, resolution), gameplay.
- Sliders and checkboxes with fantasy styling; values saved through `GameManager`.

## Future expansion (backlog)

- Inventory, dialogue, quests, combat, progression, save system.
- Localization, accessibility (colorblind, text size), cloud saves.
- Animals and farm props (art references existed in early scene experiments).
