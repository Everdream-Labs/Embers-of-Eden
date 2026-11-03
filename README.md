# Embers of Eden

Post-apocalyptic **city-builder / colony survival** game by Everdream Labs — a single-player PvE town that grows from a campfire into a city, in the spirit of Banished, Tropico, Cities: Skylines and Anno. Built with **Godot 4.4**.

> Lead your people through the ash: feed them, water them, power the town, keep them happy enough to vote for you — and survive whatever the wasteland throws at you next.

## Repository layout

| Path | What lives there |
|------|------------------|
| `game/` | The Godot project — open `game/project.godot` |
| `design/Pages of Eden/` | The design codex: four linked HTML books (Visions, Warlords, Resources, Maps), shared stylesheet, and `Images/` |
| `design/Pages of Eden/Data/` | **Source of truth** for design decisions — one markdown file per book, plus `design-source.json` (shared rules) |
| `design/Warlord Character Questionnaire.md` | Names, faces and character for every Warlord, still to be answered |
| `design/Reference/` | Archived RTS-era material: **Arms of Eden (Archive).html** (troops, weapons, armour, status effects), its notes, and the old Scope Questionnaire |
| `docs/` | Guides and archived notes (the early fantasy-adventure concept lives in `docs/archive/`) |
| `tools/` | Helper scripts — `build-share.mjs` builds the shareable codex |
| `dist/` | Build output (ignored by Git) |

## Open the game

1. Install [Godot 4.4+](https://godotengine.org/).
2. In the Godot Project Manager choose **Import** → `game/project.godot`.
3. Press **F5** to run. The project still contains the early prototype scenes (menus, world, player) from before the city-builder pivot.

## The design codex — Pages of Eden

Open any HTML in `design/Pages of Eden/` in a browser:

- **Visions of Eden** — the game direction in one place: loop, teams, economy, utilities, politics, crises, maps
- **Warlords of Eden** — the five playable teams, Warlords of the Wastes (NPC factions with a trade disposition per team), the master team skill tree with per-team access and a point simulator, the player tree that carries over between matches, and the building catalogue
- **Resources of Eden** — resources, produce, tools and crafted goods (weapons and armour are goods now), with per-team access
- **Maps of Eden** — five team maps plus the **World Forge**: type a seed, get the same detailed map every time

**Editing:** press **Edit**, click any dashed text, then **Save into HTML** to write changes into the file. Tiles have small buttons in edit mode — green to fork a copy, blue to edit, red to remove. Copy decisions back into the matching `Data/*.md` file — the markdown is the source of truth.

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
