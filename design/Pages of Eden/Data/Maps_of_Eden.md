# Maps of Eden
**Source of truth for `Maps of Eden.html`**
**Last updated:** 1 November 2026

Twelve themed maps — one home turf per Duo — plus terrain types, game setup and world info (neutrals, NPC towns, relics, wildlife). Style target: somewhere between **Age of Empires** (readability, isometric, spawns and resources), **Diablo** (dark lighting, mood) and **Endzone** (scrappy post-apocalyptic ruins). Edit here, then sync batches into the HTML `DEFAULT_DATA`.

---

## Rules

- **Temperament:** every map has a primary and a secondary terrain type.
- **Home turf:** every Duo has one home terrain (small bonus, about +5–15%) and at most one hostile terrain (small penalty). Survivors have no hostile terrain.
- **Warlord terrain trait:** every Warlord has one subtle terrain trait (also shown in Warlords of Eden).
- **Nothing decides a match on its own** — it rewards reading the land.
- **Map previews** in the HTML are code-drawn concepts generated from this data (seeded, rerollable). Real concept art / screenshots go in `Images/Maps/<Map Name>.jpg` (shortlist `Name1.jpg`, `Name2.jpg` …).
- **Resource levels:** 0 scarce · 1 low · 2 normal · 3 rich. Every spawn always gets a starter set (food, wood, stone, scrap, water) unless a resource is 0 on that map.

---

## The 12 maps

| Map | Home Duo | Terrain (primary + secondary) | Size · players | Shape | Fd | Wa | Wd | St | Ore | Sc | RC | Hazards | Neutral tribes | Relics | Struggles |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| **Ashfall Crossroads** — "Where every road meets and every trade begins." | Survivors | Ash Plains + Ruined City | Medium · 4 | Crossroads (roads to a central hub) | 2 | 2 | 2 | 2 | 2 | 2 | 1 | Ash storms | Traders' Rest (trader post), Ash Walkers (campfire band) | 2 (one central) | — |
| **Timberhold** — "A forest that remembers every axe." | The Hunters | Dead Forest + Highlands | Large · 4 | Forest lanes (dense timber, narrow lanes) | 2 | 2 | 3 | 3 | 1 | 0 | 0 | Predator ground | Hollow Mill (walled hamlet), Snare Camp (campfire band) | 1 | Nomads, Droids |
| **The Sublevel** — "The lights are still on down there." | Scientists | Tech Ruins + Ash Plains | Medium · 4 | Plateau (raised research campus) | 1 | 1 | 1 | 1 | 2 | 2 | 3 | Electrical arcs (centre + one more) | Bunker Rats (scavenger outpost), The Faculty (walled hamlet) | 2 (one central) | Pack, Hunters |
| **The Spillway** — "The failed experiment, still flowing." | Mutants | Industrial Basin + Mire | Medium · 4 | Basin (toxic pool at the centre) | 3 | 1 | 1 | 1 | 2 | 2 | 1 | Toxic runoff (centre) | Vat Strays (raider den), Pump Station 9 (scavenger outpost) | 1 | Nomads, Bloodveil |
| **Blight Crater** — "The closer you get, the richer it is." | Afflicted | Toxic Crater + Ash Plains | Large · 6 | Crater (radiation rings, rich centre) | 1 | 1 | 0 | 2 | 3 | 1 | 2 | Radiation (centre + ring) | Masked Pilgrims (cult shrine), Rim Scavengers (scavenger outpost) | 1 (central) | Templars |
| **Fort Hollow** — "The war ended. The trenches didn't." | Militia | Ruined City + Highlands | Medium · 4 | Fortress (ridges, central chokepoints) | 1 | 2 | 1 | 2 | 2 | 3 | 1 | Old minefields (×2) | Deserters' Bunker (raider den), Checkpoint 4 (trader post) | 1 (central) | Pack, Bloodveil |
| **Reliquary Peaks** — "Every summit hides a saint." | Templars | Highlands + Dead Forest | Large · 4 | Peaks (passes, cliffs) | 1 | 2 | 2 | 3 | 2 | 0 | 1 | Rockslides | Brothers of the Bell (walled hamlet), High Herders (campfire band) | 4 | Nomads, Droids |
| **Mirewood** — "The water keeps what it takes." | Bloodveil | Mire + Dead Forest | Medium · 4 | Mire (channels, drowned trees) | 2 | 3 | 2 | 0 | 0 | 1 | 1 | Sinking mud (×2) | Stilt Village (walled hamlet), The Hermit (cult shrine) | 2 | Militia, Ashen, Droids |
| **Bonefields** — "Everything here hunts something." | The Pack | Badlands Savannah + Dustline Desert | Large · 6 | Open (no cover, herds) | 3 | 1 | 1 | 1 | 1 | 1 | 0 | Predator ground (×2) | Bone Pickers, Long Horn Clan (campfire bands) | 1 | Scientists, Droids |
| **Cinder City** — "Everything burns beautifully." | Ashen | Cinderlands + Ruined City | Medium · 4 | City grid (smouldering blocks) | 0 | 1 | 1 | 2 | 2 | 3 | 1 | Burning blocks (×2) | The Pens (raider den), Ash Market (NPC town) | 1 | Hunters, Pack |
| **The Dustline** — "The road is the kingdom." | Nomads | Dustline Desert + Ash Plains | Giant · 8 | Dunes (sparse oases, long roads) | 1 | 0 | 0 | 1 | 2 | 2 | 1 | Sandstorm | Oasis Keepers (NPC town), Road Jackals (raider den) | 1 | Mutants, Bloodveil |
| **Grid Zero** — "WE REMEMBER THIS PLACE." | Droids | Dead Grid + Dustline Desert | Medium · 4 | Grid (server-farm lattice) | 0 | 1 | 0 | 1 | 2 | 2 | 3 | Electrical storms (×2) | Children of the Hum (cult shrine), Copper Strippers (scavenger outpost) | 2 | Pack, Hunters, Mutants |

**Key features**
- **Ashfall Crossroads** — ruined highway hub at the centre (market site worth fighting over); roads link every spawn; the fair-fight starter map.
- **Timberhold** — dense timber with narrow lanes (ambush country); quarry hills on the edges; wild game.
- **The Sublevel** — raised research campus with rare components and arcing reactors; scrap-rich lowlands, poor farmland; black-box relics.
- **The Spillway** — toxic basin fed by old vats, where the first Mutants were born; huge mutated food, risky water; factory ore and scrap.
- **Blight Crater** — radiation rings; richest ore in the hot centre; spawns on the safe rim.
- **Fort Hollow** — ridgelines split the map into quadrants with central chokepoints; bunkers; siege-heavy and defender-friendly.
- **Reliquary Peaks** — passes and high monasteries; four relic sites (the most of any map); stone everywhere, no scrap.
- **Mirewood** — black-water channels and drowned trees; herbs and fish, almost no stone or metal; hidden ritual stones.
- **Bonefields** — wide open grassland; huge herds (free troops for the Pack); water is the bottleneck.
- **Cinder City** — smouldering street grid where fire spreads; coal and scrap; slave camps to raid or trade with.
- **The Dustline** — dunes, salt flats and long roads; water only at oases; best map for multiple Town Centres.
- **Grid Zero** — dead server-farm lattice and relay pylons; electronics and rare components, no food; electrical storms.

---

## Terrain types (12)

| Terrain | Home Duo | Hostile for | Character | Rules |
|---|---|---|---|---|
| Ash Plains | Survivors | — | Grey open country under ash haze, old highways | Balanced resources · roads everywhere · few chokepoints |
| Dead Forest | The Hunters | Nomads | Grey-barked forest, broken sight-lines | Huge wood · reduced line of sight (suggestion) · vehicles slowed |
| Tech Ruins | Scientists | — | Collapsed labs, humming underground | Rare components & scrap · electrical arc zones · little food |
| Industrial Basin | Mutants | — | Pumps, vats, toxic runoff, mutated growth | Rich food · toxic water · ore & scrap |
| Toxic Crater | Afflicted | Templars | Blast crater ringed with radiation | Radiation rings · ore & rare in the centre · no timber |
| Ruined City | Militia | — | Fortified blocks, trenches, checkpoints | Scrap-rich · chokepoints · old minefields (suggestion) |
| Mire | Bloodveil | Militia, Ashen, Droids | Drowned forest, black water | Movement penalty off paths · herbs & fish · no stone/metal |
| Highlands | Templars | Afflicted | Cold peaks, passes, monasteries | Stone-rich · natural fortresses · relic sites |
| Badlands Savannah | The Pack | Scientists | Dry grass, bones, herds | Abundant wildlife · no cover · little metal |
| Cinderlands | Ashen | — | A megacity that kept smouldering | Fire spreads (suggestion) · coal & scrap · almost no food |
| Dustline Desert | Nomads | Mutants, Bloodveil | Mojave dunes and salt flats | Water only at oases · fast roads · sandstorms (suggestion) |
| Dead Grid | Droids | Hunters, Pack | Server farms and relay pylons | Electronics & rare · electrical storms · no food |

### Duo home / hostile effects

| Duo | Home bonus | Hostile penalty |
|---|---|---|
| Survivors | Ash Plains: +10% trade-cart speed on roads | None — forgiving anywhere |
| The Hunters | Dead Forest: +10% wood and hunting yield | Dead Grid: −5% gathering |
| Scientists | Tech Ruins: +10% rare-component salvage | Badlands Savannah: −5% research speed |
| Mutants | Industrial Basin: immune to toxic runoff, +10% food from mutated growth | Dustline Desert: +10% water upkeep |
| Afflicted | Toxic Crater: immune to radiation-zone damage, +10% gathering in hazard zones | Highlands: −5% movement |
| Militia | Ruined City: +10% wall and bunker HP | Mire: heavy armour −10% movement |
| Bloodveil | Mire: no swamp slowdown, +10% herbs | Dustline Desert: −5% healing |
| Templars | Highlands: relics +10% value, +5% morale | Toxic Crater: −5% morale |
| The Pack | Badlands Savannah: +15% taming / breeding range | Dead Grid: −5% morale |
| Ashen | Cinderlands: burning zones don't hurt Ashen units, +10% scrap from burned ruins | Mire: −10% burn damage |
| Nomads | Dustline Desert: +5% movement, oases +10% water | Dead Forest: vehicles −10% speed |
| Droids | Dead Grid: +10% electronics, storms recharge chassis (suggestion) | Mire: −10% movement |

### Warlord terrain traits

| Warlord | Trait | Effect |
|---|---|---|
| Viktor | Road Warrior | +5% movement for his army on roads |
| Ayla | Hold the Walls | +5% defence for units near your own walls |
| Brick | Stone Sense | +10% stone and ore gathering in Highlands |
| Twig | Woodland Eyes | +2 line of sight in Dead Forest |
| Dr. Something | Live Wire | +5% Arc Trooper damage during electrical storms |
| Mixy | Field Botanist | +10% herbs in Mire and Dead Forest |
| Smash | Runoff Rage | +5% attack in Industrial Basin |
| Bash | Thick Hide | −10% damage from hazard zones |
| Afflicted I | Hot-Zone Forager | +10% gathering inside radiation zones |
| Afflicted II | Carrier | Disease spreads 10% further in Mire and Industrial Basin |
| Militia Brother | Trench Line | +5% ranged defence in Ruined City |
| Militia Sister | Quartermaster | −5% unit upkeep inside your own territory |
| Brunette Sister | Ambush | +5% damage attacking from forest or swamp cover |
| Redhead Sister | Blood Rites | Conversions +5% faster near relics and ritual sites |
| Templar I | High Ground | +5% melee defence on elevated ground |
| Templar II | Pilgrim's March | +5% movement in Highlands |
| Pack Cousin I | Hunt Drive | +5% attack speed against wild animals |
| Pack Cousin II | Beast Call | +15% taming range in Badlands Savannah |
| Blowtorch | Firestarter | Fires spread 10% faster in Cinderlands and Ruined City |
| Vesper | Ruin Broker | +10% value from neutral-tribe trades in Ruined City and Cinderlands |
| Nomad Mother | Old Roads | Oases and wells give +10% water |
| Nomad Son | Dust Rider | Vehicles +5% speed in Dustline Desert |
| Droid 0001 | Grid Link | +10% vision around relay pylons and Data Centres |

---

## Game Modes (lobby set-up)

**Formats**
- **Solo** — control both Warlords as independent units; offline; Pause / ×2 / ×3 / unlockable ×4; AI fills slots; save anywhere (suggestion).
- **Multiplayer** — individual colonies; up to ~8–10 players; no drop-in; disconnect → colony goes rogue after 30 minutes.
- **Duos** — two players share one colony, each locked to one Warlord; shared stockpile (suggestion); pairs count as one slot.

**Victory conditions**
- **Regicide** (default) — kill the opponent's Warlords; a colony falls when both Warlords die (suggestion); Droids fall when their Data Centres are destroyed.
- **Map Control** — hold a % of territory for a set time (default 60% for 10 min — suggestion).
- **Wonder / Economic** — build and defend a Wonder (15 min — suggestion) or hit an economic target.
- **Relic** — hold every relic for a set time; Templars get double relic value.
- **Survival** — last against escalating waves (raiders, beasts, storms — suggestion); great for Solo and Duos.
- **Last Colony Standing** — every enemy building must fall.

**Lobby settings:** Map · Map size (Map default, Small 2, Medium 4, Large 6, Giant 8, Huge 4× Giant 10) · Resources (Low, Standard, High, Deathmatch) · Starting age (Scavenger, Settler, Industrial, Reclaimer — suggested names) · Game speed · Population cap (100–500) · Treaty (None, 15, 30, 60 min) · Visibility (Fog of war, Explored, Line of sight only, All visible) · AI difficulty (Scavenger, Survivor, Warlord, Eden-Born) · Warlord mixing (Allowed / Natural Duos only) · 8 slots with Warlord I, Warlord II, team and colour.

---

## Extras — world info

**Neutral settlements & NPC towns** (never expand)
| Type | Size | What they are | Options |
|---|---|---|---|
| Campfire band | 2–5 people | A fire, a lean-to, a few wanderers | Trade · ignore · recruit · enslave · destroy |
| Scavenger outpost | 6–12, scrap walls | Salvagers on a ruin; sell scrap and rare finds | Trade scrap · hire guides (suggestion) · raid |
| Walled hamlet | 12–25, palisade | Farming / milling settlement that defends itself | Treaty · trade food · tribute · siege |
| Trader post | Merchants + guards | Link to the off-map market | Trade · escort caravans · tax (suggestion) |
| Cult shrine | 8–15 zealots | Worshippers of the hum, the crater, the old saints; often guards a relic | Convert (Bloodveil) · bargain · purge |
| Raider den | 10–20 fighters | Hostile by default; raids weak colonies | Pay off · hire as mercenaries (suggestion) · destroy |
| NPC town | 30+, walls, market | The largest neutral — proper town with market and militia | Ally · trade hub · conquer (hard) · Ashen slave market |

**Duo reactions (suggestions):** Survivors trade bonus with every neutral · Ashen can enslave whole camps · Bloodveil convert shrines and hamlets · neutrals fear the Pack (no trade, raids pay double food) · Templars make shrines join or turn hostile · Droids can't trade unless a Signal Cult is present.

**Relics (suggestions):** Saint's Bones (+10% morale & healing; Templars ×2) · Black Box (+10% research) · Seed Vault Key (+10% farm yield) · Reactor Heart (+10% electronics and energy damage) · War Banner (+5% attack near your Warlords) · Eden Map Fragment (reveals map; several hint at Eden — lore hook).

**Wildlife by terrain:** Ash Plains — feral dogs, crows · Dead Forest — wolves, boar, deer · Highlands — goats, mountain cats · Savannah — lions, hyenas, elephants, vultures · Mire — hippos, crocodiles, leeches · Desert — scorpions, coyotes · Industrial / Crater — mutated rats and beasts · Cinderlands / Dead Grid / Tech Ruins — scavengers only.

---

## Open questions

1. Are 12 terrain types too many for launch? (Could ship 6–8 and reuse.)
2. Final values for every home / hostile effect and Warlord terrain trait.
3. Do random maps pick a temperament from these 12, or mix freely?
4. Map editor — at launch or later?
5. Day/night and weather (sandstorms, electrical storms) — visual only, or gameplay?
6. Starting age names (Scavenger, Settler, Industrial, Reclaimer are suggestions).
