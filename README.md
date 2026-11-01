# Embers of Eden

Post-apocalyptic **colony-builder RTS** by Everdream Labs — Age of Empires–style regicide, map control and tech progression, with persistent Warlord duos and deep colony identity. Built with **Godot 4.4**.

> Grow your colony, specialise your people, expand across the map, and kill the other warlords.

## Repository layout

| Path | What lives there |
|------|------------------|
| `game/` | The Godot project — open `game/project.godot` |
| `design/Pages of Eden/` | The design codex: four linked HTML books (Visions, Warlords, Arms, Resources), shared stylesheet, and `Images/` |
| `design/Pages of Eden/Data/` | **Source of truth** for design decisions — one markdown file per book, plus `design-source.json` (shared rules) |
| `design/Scope Questionnaire.md` | Open decisions still needed for a full game scope |
| `docs/` | Guides and archived notes (the early fantasy-adventure concept lives in `docs/archive/`) |
| `tools/` | Helper scripts — `build-share.mjs` builds the shareable codex |
| `dist/` | Build output (ignored by Git) |

## Open the game

1. Install [Godot 4.4+](https://godotengine.org/).
2. In the Godot Project Manager choose **Import** → `game/project.godot`.
3. Press **F5** to run. The project still contains the early prototype scenes (menus, world, player) — see the Scope Questionnaire, section 19.5.

## The design codex — Pages of Eden

Open any HTML in `design/Pages of Eden/` in a browser:

- **Visions of Eden** — the broad game vision
- **Warlords of Eden** — Duos, Warlords, palettes, flags & banners, skills, tech, buildings
- **Arms of Eden** — troops, weapons, armour, status effects (two-Warlord filter)
- **Resources of Eden** — resource, produce and tool trees (two-Warlord filter)

**Editing:** press **Edit**, click any dashed text, then **Save into HTML** to write changes into the file. Copy decisions back into the matching `Data/*.md` file — the markdown is the source of truth.

**Pictures:** drop images into `Images/<Category>/<Exact Name>.jpg`. Add `Name1.jpg`, `Name2.jpg` … to shortlist alternatives, then click the picture in any book to cycle through them.

**Sharing with the team:** from the repo root run

```bash
node tools/build-share.mjs --desktop
```

That builds `dist/Pages of Eden (Share)/` plus a `.zip` (and copies both to your Desktop). Each HTML in it is fully self-contained — styles and pictures are embedded — so it opens on any Windows or Mac machine, even as a single file.

## Version control

- Remote: [Everdream-Labs/Embers-of-Eden](https://github.com/Everdream-Labs/Embers-of-Eden)
- Primary working copy: `C:\Users\Brett Hurst\Embers Of Eden`
- GitHub Desktop: **File → Add local repository** → this folder.
- Commits use the GitHub noreply address set in this repo's local git config.
