# Maps of Eden
**Source of truth for `Maps of Eden.html`**
**Last updated:** 3 November 2026 (city-builder pivot rebuild)
**Follows:** `Data/Visions_of_Eden.md` (locked direction). If this file and Visions disagree, Visions wins.

Five hand-made **team maps** (one themed to each playable team) plus the **World Forge** — the sixth "map": seed in → detailed world out. Same seed + same sliders = the same world, every time, on every machine. Team maps start as World Forge output (stored seed + theme preset) and then get a hand-made pass. In the game, the World Forge is the random-map option.

Edit here, then sync batches into the HTML `DEFAULT_DATA` (current `meta.dataRev`: `citybuilder-2026-11-03a`).

---

## Book layout

| Tab | Hash | What it shows |
|---|---|---|
| **Team Maps** | `#map/<teamId>` (`survivors`, `hunters`, `militia`, `ashen`, `droids`) | Five map cards with live forge previews, plus a detail page per map: name, team flag colour, biome mix, description, features, resources, rivers & water, crisis tendencies, NPC micro-colonies, hand-made pass, forge recipe + fingerprint, **Open in World Forge**, concept-art slot (`Images/Maps/<Map Name>.jpg`, shortlist `Name1.jpg`, `Name2.jpg` …) |
| **World Forge** | `#forge` or `#forge/<shareCode>` | The generator |
| **World Rules** | `#rules` | Editable rule cards (see below) |

Codex nav: Visions · Warlords · Resources · Maps. Team links go to `Warlords of Eden.html#<teamId>`; Wastes faction links go to `Warlords of Eden.html#wastes`.

---

## The five team maps

| Map | Team (flag) | Biome mix | Water | Drought · Sandstorm · Radiation | Forge recipe (seed · theme · size · water · rivers · rough · moist · heat · ruins · ore · colonies) | Fingerprint |
|---|---|---|---|---|---|---|
| **Ashfall Crossroads** — "Where every road meets and every trade begins." | Survivors — Viktor & Ayla (`#8b9096`) | Ash Plains, Ruined City, Scrub / Grassland, Dead Forest (edges) | Several medium rivers, a few small lakes — the gentlest drought map | Moderate · Low · Low | `ashfall-crossroads` · survivors · 384 · 10 · 5 · 34 · 50 · 46 · 50 · 50 · 7 | `202c36533db4b821` |
| **Timberhold** — "A forest that remembers every axe." | The Hunters — Brick & Twig (`#a3a84e`) | Dead Forest, Badlands / Canyon, Scrub / Grassland, Highlands | Forest creeks drain into a canyon river; dam the canyon mouth | High · Moderate · Low | `timberhold` · hunters · 448 · 9 · 7 · 62 · 60 · 46 · 18 · 50 · 5 | `25a5ebef801a025d` |
| **Fort Hollow** — "The war ended. The trenches didn't." | Militia — brother & sister, names TBD (`#a4ae74`) | Ruined City, Industrial Zone, Highlands (fort ridge), Ash Plains | One main river through the city + old reservoirs | Moderate · Low · Moderate | `fort-hollow` · militia · 384 · 10 · 4 · 44 · 40 · 52 · 85 · 60 · 6 | `e22d5f186da65a66` |
| **Cinder City** — "Everything burns beautifully." | Ashen — Blowtorch & Vesper (`#ff5a1f`) | Cinderlands, Ruined City (burned), Badlands, Toxic Crater | Few thin rivers, ash-choked lakes — tanks first | Severe · Moderate · High | `cinder-city` · ashen · 384 · 6 · 3 · 58 · 28 · 70 · 55 · 80 · 5 | `fda5e340822c73ea` |
| **Grid Zero** — "WE REMEMBER THIS PLACE." | Droids — Droid 0001 (`#4fb0ff`) | Dead Grid, Desert / Dunes, Badlands (mesas), Highlands | One or two thin rivers and a dry lake bed | High · High · Moderate | `grid-zero` · droids · 448 · 5 · 2 · 40 · 22 · 72 · 55 · 55 · 4 | `8f7605db84ab6b10` |

### Ashfall Crossroads (Survivors)
Grey open country under a permanent ash haze, cut by two broken highways that cross at a ruined interchange town. A little of everything, nothing in excess — the fair, readable starter world and the tutorial map.
- **Features:** two broken highways crossing at a central interchange town (the richest scrap field and natural trade hub) · gentle relief, cheap foundations · fertile bottomland along the rivers · the friendliest NPC mix (suggestion)
- **Resources:** normal wood, stone, scrap, iron, copper · low coal, sulphur, oil · rare gems and rare scrap (interchange core only)
- **Colonies:** Traders' Rest (trader post) · Ash Walkers (scavengers) · sometimes a Scientists research outpost
- **Hand-made pass:** straighten highways + overpass set-piece · guarantee stone and scrap near the start · tutorial drought gauge on the river

### Timberhold (The Hunters)
Grey-barked forest giving way in the south to a red frontier range split by a deep canyon. Homestead country — timber, game, quarry cliffs and pasture.
- **Features:** east–west canyon river (dam it early) · dense northern timber, open southern range and stepped mesas · quarry cliffs (stone, iron, copper) · few ruins
- **Resources:** rich wood, stone, food · normal iron, copper, tin, coal · scarce scrap, rare scrap, oil
- **Colonies:** Hollow Mill (sawmill hamlet) · Snare Camp (trappers) · sometimes a Pack hunting lodge
- **Hand-made pass:** canyon-mouth dam site and ford · game trails and herds · thinned forest lanes around the start

### Fort Hollow (Militia)
A ruined industrial city in a river valley beneath a fortified ridge — smokestacks, rail yards and old trenches.
- **Features:** sprawling metro core + industrial ring (largest scrap / rare-scrap fields) · river through the city (polluted banks, suggestion) · old substations and rail lines (suggestion) · farmland only in valley pockets
- **Resources:** rich scrap, rare scrap, coal, iron · normal stone, copper, oil · scarce fertile land, wood
- **Colonies:** Checkpoint 4 (trader post at the bridge) · Deserters' Bunker (low starting disposition) · sometimes a Mutants vat warren
- **Hand-made pass:** trench lines and the ridge fort · intact rail shortcuts (suggestion) · reactor ruin with radiation halo

### Cinder City (Ashen)
A megacity that burned and kept smouldering, on coal seams beside a twin crater field.
- **Features:** cinderlands around a burned core · two toxic craters with sulphur rims and gem floors · richest iron, coal, sulphur; rubies · almost no fertile land
- **Resources:** rich coal, iron, sulphur, gems / rubies, scrap · normal stone, copper, oil · scarce wood, fertile land, water
- **Colonies:** The Pens (slaver camp that welcomes the Ashen) · Ash Market (black-market town) · sometimes an Afflicted quarantine camp
- **Hand-made pass:** burning seams (cosmetic, suggestion) · slave market + Ash Market trade route · one sheltered start valley

### Grid Zero (Droids)
A lattice of dead server farms and relay pylons over dry terraced mesas and dunes, under electrical storms.
- **Features:** pylon lattice (substations as pole sites, suggestion) · server farms full of rare scrap · flat mesa build space, no fertility · storms that recharge Droids in the open (suggestion)
- **Resources:** rich rare scrap, scrap, copper, oil · normal stone, iron, tin · scarce wood, fertile land, water
- **Colonies:** Children of the Hum (grid cult) · Copper Strippers (scavengers, suggestion) · sometimes a Scientists research outpost
- **Hand-made pass:** straighten pylon lines · central data-vault ruin (Data Centre function TBD) · storm paths

---

## World Forge

### Inputs
- **Seed** — any string or number (trimmed, max 80 characters; empty → `eden`). **Random seed** makes a word seed like `cinder-gorge-4821`.
- **Theme preset** — General wasteland or one of the five team themes. Picking a theme sets its sliders; the same seed under different themes gives related geography (terrain streams depend only on the seed).
- **Sliders**

| Slider | Range | General default | Effect |
|---|---|---|---|
| Map size | 256–512 (step 64) | 384 | Tiles per side. Geography is in normalised coordinates, so a seed keeps its shape across sizes; deposits scale with size |
| Water level | 0–35% | 12 | Lake budget — fills closed basins first, then low ground |
| River count | 0–12 | 6 | Number of highland river sources |
| Roughness / mountains | 0–100 | 50 | Ridged mountain belts, domain-warp strength, relief |
| Moisture | 0–100 | 50 | Rainfall → forest, scrub, mire |
| Aridity / heat | 0–100 | 50 | Heat → desert, badlands, drought tendency |
| Ruin density | 0–100 | 40 | Old cities, industrial zones, lone ruins, old roads, scrap |
| Ore richness | 0–100 | 50 | Deposit count |
| NPC colonies | 0–12 | 6 | Micro-colony sites |

### Theme presets

| Theme | Set-pieces | Slider preset (size · water · rivers · rough · moist · heat · ruins · ore · colonies) |
|---|---|---|
| General wasteland | None — every biome can appear; 0–2 random craters | 384 · 12 · 6 · 50 · 50 · 50 · 40 · 50 · 6 |
| Survivors — Ashfall Crossroads | Two highways crossing at an interchange town, flattened centre, ash bias, lower relief | 384 · 10 · 5 · 34 · 50 · 46 · 50 · 50 · 7 |
| Hunters — Timberhold | Meandering east–west canyon, terraced dry range south, wetter forest north, no craters | 448 · 9 · 7 · 62 · 60 · 46 · 18 · 50 · 5 |
| Militia — Fort Hollow | Flattened metro valley (ruined core + industrial ring), fort ridge to the north | 384 · 10 · 4 · 44 · 40 · 52 · 85 · 60 · 6 |
| Ashen — Cinder City | Cinderlands mask, burned-city palette, two craters, coal / iron / sulphur / gems boosted | 384 · 6 · 3 · 58 · 28 · 70 · 55 · 80 · 5 |
| Droids — Grid Zero | Terraced mesas, dead-grid zones, relay pylon lattice, server-farm compounds, one crater | 448 · 5 · 2 · 40 · 22 · 72 · 55 · 55 · 4 |

### Pipeline (all on typed arrays)
1. **Land** — domain-warped simplex fBm + masked ridged mountains + gentle seeded tilt → normalised, lowlands flattened; theme set-pieces and toxic craters stamped.
2. **Drainage** — priority-flood from the map edge (gives every tile a downhill path and a processing order) → rain-weighted flow accumulation.
3. **Lakes** — the largest closed basins fill partway (more with water level), then low ground tops up the budget.
4. **Rivers** — sources on high, wet ground (spaced apart), traced downhill through lakes to the edge; tributaries merge; width grows with flow; valleys carved.
5. **Climate** — heat (aridity, altitude, noise), moisture (rain + distance to water).
6. **Old world** — city sites (flat, near rivers) with district masks; old roads by A* between cities and to the edges, with broken stretches and bridges; ruin footprints on rotated street grids; lone ruins along roads.
7. **Biomes** — Ash Plains, Dead Forest, Scrub / Grassland, Desert / Dunes, Badlands / Canyon, Mire / Wetland, Toxic Crater, Highlands / Rock, Ruined City, Industrial Zone, Cinderlands (Ashen theme), Dead Grid (Droids theme), Lakes & Rivers.
8. **Fertility** — biome soil × moisture × heat penalty + river bonus.
9. **Deposits** — Stone, Iron, Copper, Tin, Coal, Sulphur, Scrap, Rare Scrap, Gems / Rubies, Oil; each placed by biome suitability with spacing; poor / normal / rich.
10. **Suggested start** — fertile, flat, near a river (not on it), near stone and forest, away from craters; a starter stone and scrap pocket is guaranteed nearby.
11. **NPC micro-colonies** — habitable spots spaced from each other and the start; type from surroundings (farmstead, scrap camp, trader post, caravan stop, mine camp, fishing stilts, water hole, pump town, walled hamlet, hermit's shack); generic wastelanders get a starting disposition of 30–75% (trade at ≥ 55%). Up to two per map may be a Wastes faction, chosen by biome affinity: Scientists → research outpost (ruins, industry, grid) · Afflicted → quarantine camp (crater rims, mires) · Mutants → vat warren (industry, craters, mires) · The Pack → hunting lodge (scrub, badlands, forest edge).
12. **Stats** — land cover %, rivers, lakes, fertile land, crisis tendencies (drought, sandstorm, radiation), fingerprint.

### Determinism
- Seed string → `cyrb128` hash → independent `sfc32` streams per stage (`terrain`, `features`, `climate`, `rivers`, `ruins`, `roads`, `ore`, `start`, `colonies`), salted with the forge version.
- Generation uses only `+ − × ÷`, `floor`, `abs`, `sqrt` (exact under IEEE-754) — never `Math.random`, `sin`, `exp`, `pow` or `**` — and stable sorts with index tie-breaks. Result: bit-identical worlds across sessions, browsers and machines.
- **Fingerprint** = 64-bit hash of the elevation, lake, biome, fertility, deposit, river and road grids plus all placed features. **Pixel fingerprint** = hash of the painted base terrain image.
- **Verify determinism** re-forges the world twice from scratch and compares both fingerprints. Seed-library entries and team-map recipes store the fingerprint, so a reload proves cross-session determinism.
- Tested 3 Nov 2026: 5 team maps × 2 runs = identical; library entry saved, page reloaded, re-forged → identical; stored team-map fingerprints match on a fresh load.
- If the generator code changes, bump `FORGE_V` — stored fingerprints will then show "changed".

### Output and viewer
- **Top-down** (1024² painter: hillshade, contours, biome textures, water depth, smooth shorelines) and **isometric** (height-displaced diorama with billboard labels).
- **Layers:** Terrain · Contours · Fertility · Water · Resources · Ruins & roads · NPC colonies · Start · Fog of war (start reveal) · Labels.
- **Drought slider** — rivers thin and vanish smallest-first (dry beds stay visible), lakes pull back to cracked mud, fertility drains (less near remaining lakes). Slide back to restore. **Drought cycle** plays a drought, then the rains return and water flows back down the rivers from the sources.
- **Hover readout** — biome, tile, elevation (m), moisture, fertility (and drought fertility), river / road, deposit, colony, start.
- Drag to pan, scroll to zoom, double-click to fit. **Export PNG** saves the current view.
- Performance (Chromium, 3 Nov 2026): 256² ≈ 0.25 s · 384² ≈ 0.6 s · 448² ≈ 0.8 s · 512² ≈ 0.8 s; repaint ≈ 0.17 s; isometric ≈ 0.12 s. A progress bar shows each stage.

### Share codes and hashes
- **Share code:** `EOE1.` + base64url(UTF-8 JSON `[seed, theme, size, water, rivers, rough, moist, heat, ruins, ore, colonies]`). Values are clamped and snapped on load.
- **Links:** `Maps of Eden.html#forge/EOE1.…` opens the forge on that exact world. The forge keeps the hash in sync as you change things.

### Persistence
- Last seed, sliders, view, layers and drought: `localStorage["mapsOfEden.forge.v1"]`.
- **Seed library** and **team-map recipes** live in the book's DATA (`seedLibrary`, `teamMaps[].forge`). Browser edits auto-save in `localStorage["mapsOfEden.v1"]` (keyed by `basedOn` = `meta.dataRev`); **Save into HTML** bakes them into the file.
- **Store this world as the team map's recipe** (forge panel) writes the current recipe + fingerprint into a team map.

### Default seed library

| Name | Recipe | Fingerprint |
|---|---|---|
| Heron Basin — wide lake country, fertile shore, gentle droughts | `heron-basin` · general · 384 · 24 · 7 · 40 · 62 · 42 · 35 · 50 · 7 | `a703b1588eac51ab` |
| The Long Dry — hot, dry, few rivers; a drought test | `the-long-dry` · general · 448 · 4 · 3 · 55 · 18 · 82 · 40 · 60 · 4 | `aaf70ffde8740733` |
| Ironback Range — mountain spine, rich ore, fast rivers | `ironback` · general · 384 · 8 · 9 · 85 · 52 · 45 · 25 · 85 · 5 | `63ab5363865278d2` |

---

## World Rules (cards)

1. **Fog of war** — start hidden except a small radius; scouts, watchtowers and growth reveal; revealed stays revealed.
2. **Biomes & building** — soft constraints (foundations, fertility, water, power radius); biome table below.
3. **Fertility & the drought cycle** — soil × moisture × water; droughts strip fertility unless dams, tanks, irrigation; creeks → rivers → lakes; the water-flows-back moment is a key emotional beat.
4. **Water networks** — water is a resource (population, buildings, construction); pumps, towers, pipes with coverage; dams and tanks buffer droughts.
5. **Power radius** — generators → poles; inside a pole's radius = powered; Droids need a vastly larger grid.
6. **Crises & warnings** — table below.
7. **NPC micro-colonies, disposition & trade** — 0% hostile → 100% best allies, trade at ≈ 55%; mostly wastelanders, occasionally a Wastes faction; never expand.
8. **Global market** — off-screen, single-player; prices move only with world events (drought → water, food; radiation storm → medicine).
9. **Procedural vs hand-made maps** — team maps start from forge seeds and get a hand-made pass; the forge is the in-game random map.

### Biomes

| Biome | Building | Growing |
|---|---|---|
| Lakes & Rivers | Pumps, docks, dams, bridges only | Fish; irrigation source |
| Ash Plains | Easy foundations, open ground | Low–middling; needs water and fertiliser |
| Dead Forest | Clear trees first (wood) | Middling once cleared; herbs, game |
| Scrub / Grassland | Easy, flat, cheap | Best farmland and pasture |
| Desert / Dunes | Sand foundations cost more (suggestion) | Almost nothing without irrigation |
| Badlands / Canyon | Cliffs block building; mesa tops are pads | Poor — copper, iron, stone |
| Mire / Wetland | Raised / stilt foundations (suggestion) | Herbs, reeds, fish; disease risk |
| Toxic Crater | Shielded buildings only (suggestion) | Nothing — sulphur, gems, rare scrap |
| Highlands / Rock | Slopes limit building size | Poor — stone, iron, gems |
| Ruined City | Clear rubble (scrap) first | None — scrap, rare scrap |
| Industrial Zone | Old foundations cheapen heavy industry (suggestion) | Polluted soil |
| Cinderlands | Scorched, fire risk (suggestion) | Very poor — coal, sulphur |
| Dead Grid | Substations as pole sites (suggestion) | None — rare scrap, copper |

### Crises

| Event | Frequency | Warning | Effect |
|---|---|---|---|
| Drought | Common, seasonal | Long notice | Creeks dry, rivers shrink, lakes pull back; fertility drains except where water was stored |
| Sandstorm | Regular | Medium notice | Outdoor work slows, exposed crops and stockpiles damaged (suggestion) |
| Radiation burst | Rare | Very little notice | Radiation sickness outside shelter; survive on what you prepared |

### Deposits

| Deposit | Where it forms |
|---|---|
| Stone | Highlands, canyon walls, badlands |
| Iron | Highlands, badlands, cinderlands |
| Copper | Badlands, desert hills, dead grid |
| Tin | Highland streams, scrub hills |
| Coal | Dead forest lowlands, cinderlands |
| Sulphur | Crater rims, cinderlands, mires |
| Scrap | Ruins, industrial zones, old roads |
| Rare Scrap | City cores, dead grid, crater floors |
| Gems / Rubies | High peaks, crater floors |
| Oil | Desert, mire, badlands lowlands |

---

## Open points
1. Real concept art per team map (`Images/Maps/<Map Name>.jpg`).
2. The hand-made pass tooling (in Godot) — how forge output is imported and edited.
3. Exact per-biome building costs and crop lists (Resources of Eden).
4. Whether Cinderlands / Dead Grid can appear on General maps (currently team-theme only).
5. Tile scale (metres per tile) and the final map sizes for "large" maps.
