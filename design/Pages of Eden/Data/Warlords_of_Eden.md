# Warlords of Eden
**Source of truth for `Warlords of Eden.html`**
**Last updated:** 3 November 2026 — city-builder direction (see `Visions_of_Eden.md`)

Five playable teams, the Warlords of the Wastes, the master team skill tree, the player tree and the shared building catalogue. Edit here, then sync batches into the HTML `DEFAULT_DATA`. Page edits saved with **Edit → Save into HTML** should be copied back here at the next sync.

---

## Core rules

- **Playable teams:** Survivors, The Hunters, Militia, Ashen, Droids. All five teams are selectable while we playtest. The shipped game always starts with Viktor & Ayla; the other four unlock through challenges.
- **Master team tree:** One master economy tree. Every team takes roughly 80% of it. Specialists hit 100% in their best branches and drop to about 60% in their weakest; Survivors sit flat at 80%. Ash Rites belong to Ashen only; Charge & Hive replaces Food & Farming for Droids.
- **Player tree:** The player tree is the biggest tree in the game and carries over between matches. Points come from playing and from challenges.
- **Points:** Point spending works like Final Fantasy XIII: pour points into a node whether or not that finishes it — a big haul can fill several nodes at once.
- **Unique building:** one per team — placeholder until designed.
- **Warlords of the Wastes:** NPC factions only — no stats, no skill trees. A disposition bar per playable team: trade opens at **55%**, **100%** = best allies. Policies and tree unlocks move it.
- **Combat:** none for now. Weapons and armour are crafted goods (see `Resources_of_Eden.md`); the old Arms of Eden lives in `design/Reference/` as an archive.

Codes used in tables: **S** Survivors · **H** The Hunters · **M** Militia · **A** Ashen · **D** Droids.

---

## Palette

| Team | Team colour | Warlord I | Warlord II |
|---|---|---|---|
| Survivors | `#8b9096` Gunmetal Grey — Salvage, practicality and no allegiance — the colour of whatever still works. | Viktor `#5b8fd1` Steel Blue | Ayla `#9a6bb8` Dusk Violet |
| The Hunters | `#a3a84e` Olive Drab — Field, forest and homestead — people who live off the land. | Brick `#b8875a` Quarry Ochre | Twig `#6faa45` Moss Green |
| Militia | `#a4ae74` Khaki — Uniforms, sandbags, drill yards — and factory smoke. | Militia Brother `#7f94a6` Gun-Metal Blue | Militia Sister `#c9a24a` Brass |
| Ashen | `#ff5a1f` Pyre Orange — Fire as an art form. | Blowtorch `#ffb02e` Flame Gold | Vesper `#9da3c2` Cold Ash |
| Droids | `#4fb0ff` Signal Blue — Status LEDs and cold data streams. | Droid 0001 `#bfeaff` Core White | — (single mind) |
| Scientists *(Wastes)* | `#3fd0c9` | Dr. Something `#4f9dff` | Mixy `#7fe3a4` |
| Afflicted *(Wastes)* | `#c2c43c` | Afflicted I `#a8e04a` | Afflicted II `#4fb39a` |
| Mutants *(Wastes)* | `#9bc53d` | Smash `#e2552f` | Bash `#d9a23a` |
| The Pack *(Wastes)* | `#c58a45` | Pack Cousin I `#b0412e` | Pack Cousin II `#d8c08a` |

Picture files: `Images/Warlords/<Name>.jpg` (shortlist `Name1.jpg`, `Name2.jpg` …), `Images/Flags/<Team> Colony Flag.jpg`, `Images/Logos/<Team>.jpg`.

---

## Playable teams

### 1. Survivors — Viktor & Ayla

*Scavenge. Barter. Endure.* · Neutral · colour `#8b9096` Gunmetal Grey

**Playstyle:** The middle road. About 80% of every branch in the master tree — good at everything, best at nothing. The team every new player starts with and the baseline every other team is measured against.

**Lore:** They were nobody before the world ended — father and daughter, Viktor and Ayla, still walking the ash roads together. No mutations, no doctrine, no machine voice in their heads. Now they sit by the fire at the heart of a town that grew up around them, and every new commander learns the wasteland at their side.

**Warlords:**
- **Viktor** — The Vanguard. Ayla's father — scarred, weathered, stubborn. Always looking past the walls: the next ruin to strip, the next patch of land to claim. *Leans toward:* Scouting, salvage, expansion.
- **Ayla** — The Bulwark. Viktor's daughter — guarded, sharp-eyed, unshakeable. Keeps the town breathing: water, walls and the night watch. *Leans toward:* Water, safety, the watch.

**Strengths:**
- Default first match — the onboarding team
- Flat ~80% access to every branch of the master tree
- No hard bans on resources or buildings
- Forgiving — no weak branch to fall into

**Weaknesses:**
- Never reaches 100% in any branch
- No production spike to build a strategy around
- Specialists out-produce them in their own lane

**Signature mechanics:**
- **Middle Road** — Every branch reachable to about 80%. No spikes, no holes.
- **Scrap & Barter** — Comfortable with salvage and NPC trade from day one (suggestion).
- **Father & Daughter** — Viktor looks outward (scouting, salvage, expansion); Ayla looks inward (water, walls, the watch). Flavour for events — they share one tree.

**Master-tree access:** 80 of 100 core nodes (80%). Per branch: Food & Farming 8/10 (80%) · Water & Irrigation 8/10 (80%) · Timber & Stone 8/10 (80%) · Mining & Metallurgy 8/10 (80%) · Industry & Crafting 8/10 (80%) · Power & Grid 8/10 (80%) · Logistics & Construction 8/10 (80%) · Health & Survival 8/10 (80%) · Society & Rule 8/10 (80%) · Trade & Relations 8/10 (80%).

**Can't acquire or process:** No hard bans.

**Unique building:** Unique Building — Placeholder. Rough idea: Barter Post — a crossroads market that steadies NPC trade routes (suggestion).

**Team map:** Ashfall Crossroads — Ash plains around an old highway junction — trade routes in every direction.

**Open:** Unique building · Exact challenge list that unlocks the other four teams

### 2. The Hunters — Brick & Twig

*Live off the land. Waste nothing.* · Land & labour · colour `#a3a84e` Olive Drab

**Playstyle:** Western homesteaders, rangers of the old frontier (think the NCR Rangers in Fallout: New Vegas). The best food, animal and raw-resource producers in the game. They make good guns, tools and crafted goods — but their technology tops out early.

**Lore:** Brick and Twig rode the old frontier long before the bombs and never stopped. Rangers, ranchers and craftsmen, they live off what the land still gives — game from the canyons, timber from the dead forests, stone from the hills. Everything is built, mended and reused by hand. They distrust anything that hums, and they will never build a laser.

**Warlords:**
- **Brick** — The Quarryman. Few words, heavy hands. Reads stone like other men read maps — quarries, mines and the occasional well-placed charge. *Leans toward:* Stone, mining, gunsmithing.
- **Twig** — The Woodsman. Patient and grounded. Knows every tree worth cutting and every one worth leaving, rides the range and never misses a shot. *Leans toward:* Timber, ranching, the hunt.

**Strengths:**
- 100% Food & Farming and 100% Timber & Stone
- Best animal products — meat, milk, eggs, leather
- Good guns, tools and hand-crafted goods to sell
- Hard workers — raw gathering stays strong under pressure

**Weaknesses:**
- Never laser or plasma goods
- Power & Grid and Industry capped at 60%
- Weak electronics — late-game tech relies on trade

**Signature mechanics:**
- **Live Off the Land** — Food, animal products, wood and stone reach 100% of their branches.
- **Frontier Grit** — Longer shifts and faster raw gathering (suggestion).
- **Hand-Made Arsenal** — Guns, blades and tools as goods — never lasers or plasma.
- **Distrust of the Hum** — Small grids: Power & Grid and Industry top out around 60%.

**Master-tree access:** 80 of 100 core nodes (80%). Per branch: Food & Farming 10/10 (100%) · Water & Irrigation 9/10 (90%) · Timber & Stone 10/10 (100%) · Mining & Metallurgy 7/10 (70%) · Industry & Crafting 6/10 (60%) · Power & Grid 6/10 (60%) · Logistics & Construction 8/10 (80%) · Health & Survival 8/10 (80%) · Society & Rule 8/10 (80%) · Trade & Relations 8/10 (80%).

**Can't acquire or process:** Laser optics · Plasma cells · Advanced electronics (import only) · Special alloys (TBD).

**Unique building:** Unique Building — Placeholder. Rough idea: Ranger Station — hunting, ranching and trail scouting from one lodge (suggestion).

**Team map:** Timberhold — Dead forest meeting open range and red canyons — frontier country.

**Open:** Unique building · How 'hard work' shows up mechanically

### 3. Militia — Militia Brother & Militia Sister

*Steel, steam and discipline.* · Industry · colour `#a4ae74` Khaki

**Playstyle:** The inverse of the Hunters. Heavy industry, power and advanced weapons up to plasma. Weak at farming, foraging and anything that lives off the land — they feed the town through greenhouses, trade and sheer output.

**Lore:** What's left of an army — or what a brother and sister built to look like one. They found the old factories, got the turbines spinning and never let them stop. The Militia think in shifts, quotas and supply lines: steel, power and plasma. They are terrible farmers, and they know it.

**Warlords:**
- **Militia Brother** — Name TBD. The quartermaster. Runs the factory floor like a supply depot — quotas, shifts, steel. Placeholder until names and faces lock. *Leans toward:* Industry, quotas, logistics.
- **Militia Sister** — Name TBD. The engineer. Keeps the turbines turning and the plasma lines stable. Colder than her brother, and better at it. Placeholder. *Leans toward:* Power, plasma, machines.

**Strengths:**
- 100% Industry & Crafting and 100% Power & Grid
- The only team that makes plasma goods at full strength
- Strong steel, electronics and machine parts
- Disciplined shifts — orderly towns (suggestion)

**Weaknesses:**
- Food & Farming capped at 60%
- Weak foraging, ranching and old-growth timber
- Relies on greenhouses, imports or trade for food

**Signature mechanics:**
- **Factory Floor** — Industry & Crafting and Power & Grid at 100%.
- **Plasma Arsenal** — Plasma cells and plasma weapons as high-value goods.
- **Ration Cards** — Poor farmers — food comes from greenhouses, trade or industry (suggestion).
- **Discipline** — Drills and shifts keep society steady under strain (suggestion).

**Master-tree access:** 80 of 100 core nodes (80%). Per branch: Food & Farming 6/10 (60%) · Water & Irrigation 7/10 (70%) · Timber & Stone 7/10 (70%) · Mining & Metallurgy 9/10 (90%) · Industry & Crafting 10/10 (100%) · Power & Grid 10/10 (100%) · Logistics & Construction 8/10 (80%) · Health & Survival 8/10 (80%) · Society & Rule 8/10 (80%) · Trade & Relations 7/10 (70%).

**Can't acquire or process:** Prize livestock (no selective breeding) · Wild forage at scale · Hardwood (no old-growth sense).

**Unique building:** Unique Building — Placeholder. Rough idea: Assembly Line — a powered mega-workshop that chains two recipes (suggestion).

**Team map:** Fort Hollow — A ruined industrial city — dead factories, rail yards and a cooling-tower skyline.

**Open:** Warlord names and faces (brother & sister) · Unique building · Militia vs Mutants: confirm the swap is permanent

### 4. Ashen — Blowtorch & Vesper

*Everything burns beautifully.* · Fire & the dark economy · colour `#ff5a1f` Pyre Orange

**Playstyle:** Pyros. Masters of mining, smelting and furnaces, with exclusive access to the darkest branch in the game — slavery, cannibalism and rule by fear. Weak at health, civic trust and trade; the wasteland keeps its distance.

**Lore:** Gothic arsonists and intellectual bandits. Blowtorch treats fire as art; Vesper watches it burn with cold eyes and studies the people who survive it. Their towns run on furnaces, fear and chains. The tone peaks brutal when you play Ashen.

**Warlords:**
- **Blowtorch** — The Artist of Fire. Energetic, restless, brilliant with a flame. Not reckless — just intense. Every furnace is a composition. *Leans toward:* Fire, furnaces, smelting.
- **Vesper** — The Cold Mind. Cold, apathetic and terrifyingly observant. Reads people, finds the crack, and leans on it until they break — or obey. *Leans toward:* Fear, chains, control.

**Strengths:**
- 100% Mining & Metallurgy — charcoal, furnaces, steel, rubies
- Exclusive Ash Rites branch: slavery, cannibalism, fear
- Cheap forced labour when it's needed most
- Starvation has a dark way out

**Weaknesses:**
- Health, Society and Trade capped at 60%
- NPC colonies start wary of them
- Dark options feed unrest and psychosis

**Signature mechanics:**
- **Fire as Art** — Mining & Metallurgy at 100% — kilns, smelters and furnaces run hot.
- **Ash Rites** — Exclusive branch: chain gangs, breaking pens, Long Pig, fear doctrine.
- **Feared, Not Loved** — Health, society and trade cap around 60%; NPCs keep their distance.
- **Blowtorch & Vesper** — He builds the fires; she studies who survives them. Flavour for events.

**Master-tree access:** 75 of 100 core nodes + all 6 Ash Rites (81 takeable). Per branch: Food & Farming 7/10 (70%) · Water & Irrigation 7/10 (70%) · Timber & Stone 9/10 (90%) · Mining & Metallurgy 10/10 (100%) · Industry & Crafting 8/10 (80%) · Power & Grid 8/10 (80%) · Logistics & Construction 8/10 (80%) · Health & Survival 6/10 (60%) · Society & Rule 6/10 (60%) · Trade & Relations 6/10 (60%) · Ash Rites 6/6 (100%, Ashen only).

**Can't acquire or process:** Laser optics · Plasma cells · Advanced medicine (import only).

**Unique building:** Unique Building — Placeholder. Rough idea: Pyre Gallery — fire as art; fear and loyalty effects on the town (suggestion).

**Team map:** Cinder City — Burned-out districts over rich ore — the ground is still warm.

**Open:** Unique building · How visible the dark options are in UI and tone

### 5. Droids — Droid 0001

*WE ARE ONE. WE DO NOT HUNGER.* · The wildcard · colour `#4fb0ff` Signal Blue

**Playstyle:** No food at all — the Food & Farming branch is replaced by Charge & Hive. Power is their food: every droid walks home to charge each night, so the grid has to be far bigger than anyone else's. Logistics and power at 100%; everything human is weak.

**Lore:** Droid 0001 is the face of one hive mind that speaks as 'we'. It does not eat, sleep or mourn — but every night every shell must walk home to the cradle and drink power, or go dark. The hive builds lesser chassis to work in its name, and a town that never stops humming.

**Warlords:**
- **Droid 0001** — One Mind, Many Shells. The humanoid face of the hive — Tesla-bot / Terminator silhouette. Speaks as 'we'. Does not eat. Every night, every shell comes home to charge. *Leans toward:* Power, logistics, fabrication.

**Strengths:**
- No food, farms or kitchens to manage
- 100% Power & Grid, Logistics and Charge & Hive
- Tireless workers between charges
- New droids are built, not born (suggestion)

**Weaknesses:**
- A blackout is their famine
- Nightly charging walks cost work time
- Water, Health, Society and Trade capped at 60%
- NPC colonies distrust machines

**Signature mechanics:**
- **No Hunger** — No food, farms, kitchens or Food branch — Charge & Hive replaces it.
- **Nightly Charge** — Every droid walks home to charge each night. Power is their food.
- **Grid of Grids** — Power & Grid and Logistics at 100% — they need a far bigger grid than anyone else.
- **Wildcard Rules** — Repair instead of medicine, fabrication instead of births, consensus instead of elections (suggestion).

**Master-tree access:** 70 of 90 core nodes + all 10 Charge & Hive (80 takeable; Food & Farming is replaced). Per branch: Food & Farming replaced · Water & Irrigation 6/10 (60%) · Timber & Stone 8/10 (80%) · Mining & Metallurgy 9/10 (90%) · Industry & Crafting 9/10 (90%) · Power & Grid 10/10 (100%) · Logistics & Construction 10/10 (100%) · Health & Survival 6/10 (60%) · Society & Rule 6/10 (60%) · Trade & Relations 6/10 (60%) · Charge & Hive 10/10 (100%, Droids only).

**Can't acquire or process:** All food and produce · Leather and hides · Alcohol.

**Unique building:** Unique Building — Placeholder. Rough idea: Hive Core — the old Data Centre, repurposed (function TBD — no longer an elimination rule).

**Team map:** Grid Zero — A dead power grid on storm-lashed flats — pylons to the horizon.

**Open:** What a Data Centre does now (if anything) · Droid fail state: blackout instead of starvation? · Do Droids drink water (coolant) or only use it in construction?

---

## Warlords of the Wastes

Factions out in the wasteland that you meet as NPC micro-colonies. They are not playable and have no skill trees. Each one feels differently about each playable team — trade opens at 55%, 100% means best allies. Policies and skill-tree unlocks move these numbers during a match.

| Faction | Warlords | Motto | Survivors | Hunters | Militia | Ashen | Droids |
|---|---|---|---|---|---|---|---|
| Scientists | Dr. Something & Mixy | Progress has a body count. | 60% | 30% | 75% | 35% | 80% |
| Afflicted | Afflicted I & Afflicted II | Breathe deep. | 55% | 45% | 35% | 40% | 65% |
| Mutants | Smash & Bash | Two fists. One face. | 50% | 45% | 25% | 20% | 40% |
| The Pack | Pack Cousin I & Pack Cousin II | HUNT. EAT. MORE. | 35% | 55% | 20% | 60% | 5% |

### Scientists

**Who they are:** Dr. Something and Mixy are obsessed lab partners — not lovers, not family — united only by the work. Somewhere beneath the ruins their laboratory still has its lights on.

**What they stand for:** Knowledge at any price. They trade technology for test subjects and keep the old world's machines alive. Their failed gene-split created the Mutants — a debt nobody has forgiven.

**Trade:** Sells electronics, medicine and rare components. Wants scrap, rare scrap — and volunteers (don't ask).

- **Dr. Something** — Brilliant, unstable, delighted by voltage. Builds machines that should not work, and makes them work.
- **Mixy** — Clinical and quietly unsettling. Keeps the subjects — and the doctor — alive long enough to finish the experiment.

### Afflicted

**Who they are:** A hazmat-clad couple who learned to live in air that kills everyone else. Behind the masks, the whole faction moves like people who stopped being afraid of the sickness.

**What they stand for:** Survival through the poison. They settle where others die — toxic craters, irradiated ground — and see healthy colonies as soft. Quiet survivors or a plague cult? Still open.

**Trade:** Sells herbs, antitoxins and radiation know-how. Wants water, filters and medicine.

- **Afflicted I** — Hazmat-clad half of the couple. Irradiated ground feels like home.
- **Afflicted II** — The other half. Disease and rot are tools, not threats.

### Mutants

**Who they are:** Smash and Bash are identical twins — the first out-of-control gene-split from the Scientists' work and the birth of the mutant race. Same face, same scars, two tempers.

**What they stand for:** Strength and appetite. They want food, respect and somewhere nobody calls them an experiment. They hate the Scientists who made them and the Ashen who chain them.

**Trade:** Sells heavy labour and salvage from places nobody else can reach. Wants food — lots of it.

- **Smash** — Hits first, thinks later — if at all.
- **Bash** — Slower temper, harder to stop once angered.

### The Pack

**Who they are:** Two cousins lead the Pack — outsiders think they're brother and sister, and they always correct it. The surface is almost comedic; the core is primal and cannibalistic.

**What they stand for:** The hunt is everything. Respect the strong, eat the weak, breed any beast — and despise machines that can't bleed.

**Trade:** Sells hides, meat and tamed animals. Wants blades, salt and captives.

- **Pack Cousin I** — Comedic surface, cannibal core. Not siblings — they correct anyone who says otherwise.
- **Pack Cousin II** — The one the beasts answer to. Breeds anything, including wild map animals.

### Wastelanders

Most NPC micro-colonies are generic wastelanders — scavengers, traders, refugees and the odd bandit camp. Each rolls its own disposition, offers and wants. Now and then one flies the flag of a Warlord of the Wastes instead.

---

## Master team skill tree

### Food & Farming — *not for Droids*

Droids never see this branch — Charge & Hive replaces it.

| Tier | Node | Effect | Cost | Requires | Blocked for |
|---|---|---|---|---|---|
| 1 | Forager's Eye | +15% berries, herbs and mushrooms from foragers. | 40 pts | — | M |
| 1 | Fish Traps | Fishing shacks set traps that keep catching while unmanned. | 40 pts | — | — |
| 2 | Crop Rotation | Fields lose fertility 25% slower. | 80 pts | Forager's Eye | — |
| 2 | Animal Pens | Unlocks pens: milk, eggs and wool from tamed animals. | 80 pts | Fish Traps | — |
| 3 | Seed Vault | Replant after a drought without losing seed stock. | 150 pts | Crop Rotation | M |
| 3 | Smokehouse Curing | Smoked and salted food spoils 50% slower. | 150 pts | Animal Pens | — |
| 4 | Irrigated Rows | Fields inside water-network range ignore the first stage of drought. | 250 pts | Seed Vault | — |
| 4 | Selective Breeding | +20% milk, eggs, meat and leather from ranches. | 250 pts | Smokehouse Curing | S M A |
| 5 | Hydroponic Greenhouse | Powered greenhouses grow all year, drought or not. | 400 pts | Irrigated Rows | A |
| 5 | Prairie Abundance | +25% yield from every field on fertile soil. | 400 pts | Selective Breeding | S M A |

### Water & Irrigation

Wells, pipes, tanks and dams — the drought defence.

| Tier | Node | Effect | Cost | Requires | Blocked for |
|---|---|---|---|---|---|
| 1 | Rain Barrels | Water collectors gather 20% more; double during storms. | 40 pts | — | M D |
| 1 | Deep Wells | Wells reach the lower water table and keep working deeper into a drought. | 40 pts | — | — |
| 2 | Pipe Fitting | Water network pipes reach 25% further. | 80 pts | Rain Barrels | — |
| 2 | Storage Tanks | Water tanks hold 30% more. | 80 pts | Deep Wells | — |
| 3 | Sand Filters | Purifiers remove disease from drinking water. | 150 pts | Pipe Fitting | A D |
| 3 | Irrigation Channels | Unlocks channels that carry water — and fertility — to fields. | 150 pts | Storage Tanks | M A D |
| 4 | Earthwork Dams | Unlocks dams that hold the river level through a drought. | 250 pts | Sand Filters | M |
| 4 | Pressure Towers | Water towers serve a 50% larger area. | 250 pts | Irrigation Channels | S |
| 5 | Rad Scrubbers | Purifiers strip radiation after a radiation burst. | 400 pts | Earthwork Dams | A D |
| 5 | Aquifer Pumps | Powered deep pumps — a water source no drought can dry. | 400 pts | Pressure Towers | S H |

### Timber & Stone

The raw building blocks.

| Tier | Node | Effect | Cost | Requires | Blocked for |
|---|---|---|---|---|---|
| 1 | Sharpened Axes | +15% wood from woodcutters. | 40 pts | — | — |
| 1 | Stone Picks | +15% stone from quarries. | 40 pts | — | — |
| 2 | Forester's Rows | Foresters replant 30% faster. | 80 pts | Sharpened Axes | M A |
| 2 | Hand Carts | Woodcutters and quarry workers carry +1 load per trip. | 80 pts | Stone Picks | — |
| 3 | Sawpits | Unlocks planks — the first refined building material. | 150 pts | Forester's Rows | — |
| 3 | Stonecutting | Unlocks cut stone blocks for sturdier buildings. | 150 pts | Hand Carts | — |
| 4 | Old-Growth Sense | Woodcutters find hardwood in dead forests. | 250 pts | Sawpits | M D |
| 4 | Blasting Powder | Quarries +30% output when stocked with gunpowder. | 250 pts | Stonecutting | — |
| 5 | Timber Barons | +25% wood from every camp. | 400 pts | Old-Growth Sense | S M D |
| 5 | Mountain Breakers | Quarries never run dry. | 400 pts | Blasting Powder | S |

### Mining & Metallurgy

Ore to ingots: smelter → furnace → foundry. Special-alloy gating per team is still open.

| Tier | Node | Effect | Cost | Requires | Blocked for |
|---|---|---|---|---|---|
| 1 | Prospecting | Ore deposits show through the fog at the edge of explored land. | 40 pts | — | — |
| 1 | Bloomery | Smelters can melt copper and tin. | 40 pts | — | — |
| 2 | Deep Shafts | Mines yield 25% more. | 80 pts | Prospecting | — |
| 2 | Bronze Casting | Unlocks bronze — tier-two tools. | 80 pts | Bloomery | — |
| 3 | Coal Seams | Unlocks coal mining. | 150 pts | Deep Shafts | — |
| 3 | Iron Smelting | The smelter upgrades to a furnace and unlocks iron. | 150 pts | Bronze Casting | — |
| 4 | Gem Cutting | Rubies and gems from mines can be cut into jewellery. | 250 pts | Coal Seams | S H M D |
| 4 | Steelmaking | Furnaces can make steel. | 250 pts | Iron Smelting | — |
| 5 | Special Alloys | Unlocks alloy enhancement (which teams keep this is still open). | 400 pts | Gem Cutting | S H |
| 5 | Hardened Steel | Foundry tier — unlocks hardened steel. | 400 pts | Steelmaking | H |

### Industry & Crafting

Tools, weapons and machines as goods.

| Tier | Node | Effect | Cost | Requires | Blocked for |
|---|---|---|---|---|---|
| 1 | Tinkering | Workshops repair worn tools instead of scrapping them. | 40 pts | — | — |
| 1 | Tanning Racks | Unlocks leather from hides. | 40 pts | — | D |
| 2 | Toolmaking | Tools craft from bronze and iron; workers with tools work 10% faster. | 80 pts | Tinkering | — |
| 2 | Gunpowder | Unlocks gunpowder from sulphur and charcoal. | 80 pts | Tanning Racks | — |
| 3 | Mechanical Parts | Gears, springs and fittings for advanced buildings. | 150 pts | Toolmaking | — |
| 3 | Gunsmithing | Handguns and rifles as craftable goods. | 150 pts | Gunpowder | — |
| 4 | Electronics | Circuit salvage becomes electronics. | 250 pts | Mechanical Parts | H |
| 4 | Assembly Lines | +20% output from powered workshops. | 250 pts | Gunsmithing | S H |
| 5 | Laser Optics | Laser rifles and optics as goods. | 400 pts | Electronics | H A |
| 5 | Plasma Works | Plasma cells and plasma weapons as goods. | 400 pts | Assembly Lines | S H A |

### Power & Grid

Generators and pole radius.

| Tier | Node | Effect | Cost | Requires | Blocked for |
|---|---|---|---|---|---|
| 1 | Burner Generators | Wood and charcoal generators — the first power. | 40 pts | — | — |
| 1 | Copper Wire | Power poles cost 30% less. | 40 pts | — | — |
| 2 | Wider Poles | Power pole radius +25%. | 80 pts | Burner Generators | — |
| 2 | Battery Banks | Store power through the night. | 80 pts | Copper Wire | H |
| 3 | Coal Plant | Unlocks the coal power plant. | 150 pts | Wider Poles | — |
| 3 | Wind Turbines | Free power that rises in sandstorms. | 150 pts | Battery Banks | — |
| 4 | Load Balancing | In a shortage, low-priority buildings lose power first. | 250 pts | Coal Plant | S H |
| 4 | Solar Arrays | Daytime power from salvaged panels. | 250 pts | Wind Turbines | H A |
| 5 | Fuel Turbines | Fuel-burning turbines — huge output, needs refinery fuel. | 400 pts | Load Balancing | — |
| 5 | Reactor Core | Experimental late-game generator. | 400 pts | Solar Arrays | S H A |

### Logistics & Construction

Builders, haulers, storage, roads and construction priority.

| Tier | Node | Effect | Cost | Requires | Blocked for |
|---|---|---|---|---|---|
| 1 | Builder Drills | Builders work 15% faster. | 40 pts | — | — |
| 1 | Wheelbarrows | Haulers carry +1 load. | 40 pts | — | — |
| 2 | Priority Boards | Builders re-route the moment you raise a site's priority. | 80 pts | Builder Drills | A |
| 2 | Packed Roads | +20% walk speed on roads. | 80 pts | Wheelbarrows | M |
| 3 | Scaffolding | Building upgrades finish 25% faster. | 150 pts | Priority Boards | — |
| 3 | Warehouse Racking | Warehouses hold 30% more. | 150 pts | Packed Roads | — |
| 4 | Prefab Yards | Prefab parts cut construction materials by 15%. | 250 pts | Scaffolding | H |
| 4 | Cargo Carts | Haulers with carts carry twice as much. | 250 pts | Warehouse Racking | — |
| 5 | Crane Crews | Two builders on one site work like four. | 400 pts | Prefab Yards | S M |
| 5 | Rail Spurs | Bulk rail links between warehouses. | 400 pts | Cargo Carts | S H A |

### Health & Survival

Thirst, starvation, disease and radiation. Droids read this branch as repair & shielding.

| Tier | Node | Effect | Cost | Requires | Blocked for |
|---|---|---|---|---|---|
| 1 | Herbal Remedies | Herbalists cure mild sickness. | 40 pts | — | M D |
| 1 | Boiled Water | Thirst drains 15% slower. | 40 pts | — | D |
| 2 | Clinic | Unlocks the clinic. | 80 pts | Herbal Remedies | — |
| 2 | Ration Discipline | Starvation sets in 20% later. | 80 pts | Boiled Water | D |
| 3 | Quarantine Wards | Disease spreads 40% slower. | 150 pts | Clinic | A |
| 3 | Rad Shelters | Sheltered citizens take 50% less from radiation bursts. | 150 pts | Ration Discipline | — |
| 4 | Antibiotics | Medicine cures disease outright. | 250 pts | Quarantine Wards | H A D |
| 4 | Iodine Stockpiles | Faster recovery from radiation sickness. | 250 pts | Rad Shelters | S |
| 5 | Hospital | The clinic upgrades to a full hospital. | 400 pts | Antibiotics | H A |
| 5 | Field Surgery | Sick and injured workers return twice as fast. | 400 pts | Iodine Stockpiles | S M A |

### Society & Rule

Happiness, policies, elections and unrest.

| Tier | Node | Effect | Cost | Requires | Blocked for |
|---|---|---|---|---|---|
| 1 | Town Crier | See exactly what is making people unhappy. | 40 pts | — | A |
| 1 | Campfire Stories | Fire pits give +5 happiness to nearby homes. | 40 pts | — | M A D |
| 2 | Policy Hall | Unlocks the policy building. | 80 pts | Town Crier | — |
| 2 | Watch Patrols | Walls and watchtowers raise the safety meter further. | 80 pts | Campfire Stories | — |
| 3 | Campaign Promises | More promises to choose from at elections. | 150 pts | Policy Hall | A D |
| 3 | Taverns | Alcohol becomes happiness. | 150 pts | Watch Patrols | D |
| 4 | Extra Edict Slot | +1 active policy. | 250 pts | Campaign Promises | — |
| 4 | Propaganda | Broken promises cause 20% less unrest. | 250 pts | Taverns | H |
| 5 | Beloved Leaders | +10% votes at every election. | 400 pts | Extra Edict Slot | S M A D |
| 5 | Martial Law | Suppress unrest for a season — at a happiness cost. | 400 pts | Propaganda | S H |

### Trade & Relations

NPC disposition, routes and the event-driven global market.

| Tier | Node | Effect | Cost | Requires | Blocked for |
|---|---|---|---|---|---|
| 1 | Barter Tables | Unlocks the trading post. | 40 pts | — | — |
| 1 | Scout Envoys | Meet NPC colonies through the fog faster. | 40 pts | — | — |
| 2 | Caravan Mules | Trade routes carry more per trip. | 80 pts | Barter Tables | D |
| 2 | Goodwill Gifts | Gifts raise disposition twice as fast. | 80 pts | Scout Envoys | M A D |
| 3 | Market Exchange | Access to the global market. | 150 pts | Caravan Mules | — |
| 3 | Trade Contracts | Fixed NPC contracts at locked prices. | 150 pts | Goodwill Gifts | A |
| 4 | Weather Brokers | See which prices a forecast crisis will move. | 250 pts | Market Exchange | H |
| 4 | Silver Tongues | +10 starting disposition with every NPC colony. | 250 pts | Trade Contracts | M A D |
| 5 | Caravan Network | Several routes from one trading post. | 400 pts | Weather Brokers | S M A |
| 5 | Gold Standard | Mint gold coin; better sell prices. | 400 pts | Silver Tongues | S H D |

### Ash Rites — *only Ashen*

Ashen only — slavery, cannibalism and rule by fear.

| Tier | Node | Effect | Cost | Requires | Blocked for |
|---|---|---|---|---|---|
| 1 | Chain Gangs | Captured wastelanders become forced labour. | 40 pts | — | — |
| 2 | Breaking Pens | Unlocks the pens: slaves work without needing happiness, but raise unrest. | 80 pts | Chain Gangs | — |
| 3 | Long Pig | Cannibalism — the dead become food. Ends starvation; feeds psychosis. | 150 pts | Breaking Pens | — |
| 3 | Fear Doctrine | Unrest turns into fear: fewer votes lost, more psychosis. | 150 pts | Breaking Pens | — |
| 4 | Pyre Spectacle | Public burnings — a burst of loyalty and a scar on the town. | 250 pts | Long Pig | — |
| 5 | Ash Throne | Loyal slaves can be raised to citizens — or kept in chains for ever. | 400 pts | Pyre Spectacle | — |

### Charge & Hive — *only Droids*

Droids only — replaces Food & Farming. Power is their food.

| Tier | Node | Effect | Cost | Requires | Blocked for |
|---|---|---|---|---|---|
| 1 | Charge Cradles | Droids walk home to charge every night at cradles. | 40 pts | — | — |
| 1 | Low-Power Mode | Work 20% slower, drain 40% less. | 40 pts | — | — |
| 2 | Induction Pads | Work buildings inside a pole's radius top droids up on shift. | 80 pts | Charge Cradles | — |
| 2 | Shift Rotation | Half the hive charges while half works — no more dark nights. | 80 pts | Low-Power Mode | — |
| 3 | Chassis Fabrication | New droids are assembled from steel and electronics. | 150 pts | Induction Pads | — |
| 3 | Swarm Memory | A droid learns a profession the instant any droid does. | 150 pts | Shift Rotation | — |
| 4 | Capacitor Banks | Store a full night's charge for storm blackouts. | 250 pts | Chassis Fabrication | — |
| 4 | Overclock | +25% work speed, double drain. | 250 pts | Swarm Memory | — |
| 5 | Wireless Grid | Droids charge anywhere inside power radius. | 400 pts | Capacitor Banks | — |
| 5 | Second Core | Build a second hive core (a repurposed Data Centre — function TBD). | 400 pts | Overclock | — |

---

## Player tree (carries over between matches)

### Gathering

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Steady Hands | +2% wood chopping. | 20 pts | — |
| 1 | Stone Reader | +2% stone quarrying. | 20 pts | — |
| 2 | Keen Edge | +3% wood chopping. | 50 pts | Steady Hands |
| 2 | Scrap Nose | +3% scrap from salvage. | 50 pts | Stone Reader |
| 3 | Timber Sense | +5% wood chopping. | 100 pts | Keen Edge |
| 3 | Deep Veins | +5% ore from mines. | 100 pts | Scrap Nose |
| 4 | Hardwood Luck | 2% chance a felled tree gives hardwood. | 180 pts | Timber Sense |
| 4 | Lucky Strike | 1% chance any mine trip turns up a gem. | 180 pts | Deep Veins |
| 5 | Lumber Legend | +8% wood chopping. | 300 pts | Hardwood Luck |
| 5 | Mother Lode | +8% ore and stone. | 300 pts | Lucky Strike |

### Farming & Herds

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Green Thumb | +2% crop yield. | 20 pts | — |
| 1 | Gentle Hands | +2% animal products. | 20 pts | — |
| 2 | Fertile Memory | Fields lose fertility 5% slower. | 50 pts | Green Thumb |
| 2 | Big Litters | +5% herd growth. | 50 pts | Gentle Hands |
| 3 | Seed Saver | Start every match with extra seed stock. | 100 pts | Fertile Memory |
| 3 | Smoked to Last | Preserved food spoils 10% slower. | 100 pts | Big Litters |
| 4 | Rain Dancer | +5% crop yield the season after a drought. | 180 pts | Seed Saver |
| 4 | Prize Stock | +5% milk, eggs and leather. | 180 pts | Smoked to Last |
| 5 | Harvest Festival | First harvest of each year +10%. | 300 pts | Rain Dancer |
| 5 | Old Homestead | +8% all food. | 300 pts | Prize Stock |

### Water

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Bucket Line | +2% water collected. | 20 pts | — |
| 1 | Pipe Thrift | Water network pieces cost 5% less. | 20 pts | — |
| 2 | Dowsing Rod | See the water table before you place a well. | 50 pts | Bucket Line |
| 2 | Tank Welder | +5% water tank capacity. | 50 pts | Pipe Thrift |
| 3 | Dew Nets | +5% water during sandstorms. | 100 pts | Dowsing Rod |
| 3 | Drought Ledger | Drought warnings arrive a day earlier. | 100 pts | Tank Welder |
| 4 | Steady Flow | Rivers drain 5% slower in a drought. | 180 pts | Dew Nets |
| 4 | Clean Cup | −10% disease from drinking water. | 180 pts | Drought Ledger |
| 5 | River Song | After a drought, rivers refill 15% faster. | 300 pts | Steady Flow |
| 5 | Never Thirst | +8% all water production. | 300 pts | Clean Cup |

### Industry

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Oiled Gears | +2% workshop speed. | 20 pts | — |
| 1 | Hot Hands | +2% smelter speed. | 20 pts | — |
| 2 | Spare Parts | Tools last 5% longer. | 50 pts | Oiled Gears |
| 2 | Clean Pour | +3% ingot yield. | 50 pts | Hot Hands |
| 3 | Master Smith | +5% tool and blade crafting. | 100 pts | Spare Parts |
| 3 | Alloy Notes | Alloy recipes cost 5% less. | 100 pts | Clean Pour |
| 4 | Gunsmith's Eye | +5% gun crafting. | 180 pts | Master Smith |
| 4 | Fine Settings | +5% jewellery value. | 180 pts | Alloy Notes |
| 5 | Factory Rhythm | +5% output from upgraded buildings. | 300 pts | Gunsmith's Eye |
| 5 | Industrialist | +8% all crafted goods. | 300 pts | Fine Settings |

### Power

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Live Wire | +2% generator output. | 20 pts | — |
| 1 | Long Lines | +3% power pole radius. | 20 pts | — |
| 2 | Night Reserve | +5% battery capacity. | 50 pts | Live Wire |
| 2 | Cheap Copper | Power poles cost 10% less. | 50 pts | Long Lines |
| 3 | Wind Reader | +5% wind output. | 100 pts | Night Reserve |
| 3 | Sun Catcher | +5% solar output. | 100 pts | Cheap Copper |
| 4 | Brownout Guard | Power shortages start 5% later. | 180 pts | Wind Reader |
| 4 | Clean Burn | Generators burn 5% less fuel. | 180 pts | Sun Catcher |
| 5 | Overvolt | +5% speed in powered buildings. | 300 pts | Brownout Guard |
| 5 | Grid Master | +8% all power. | 300 pts | Clean Burn |

### Construction

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Quick Footings | +2% build speed. | 20 pts | — |
| 1 | Thrifty Plans | −2% construction cost. | 20 pts | — |
| 2 | Priority Sense | Builders switch to higher-priority sites faster. | 50 pts | Quick Footings |
| 2 | Salvage Rubble | Demolition refunds +10%. | 50 pts | Thrifty Plans |
| 3 | Upgrade Crews | +5% upgrade speed. | 100 pts | Priority Sense |
| 3 | Prefab Stock | Start every match with one prefab kit. | 100 pts | Salvage Rubble |
| 4 | Storm Bracing | Buildings take 10% less storm damage. | 180 pts | Upgrade Crews |
| 4 | Firm Ground | Building on rough ground costs 10% less. | 180 pts | Prefab Stock |
| 5 | Architect | +8% build speed. | 300 pts | Storm Bracing |
| 5 | Master Builder | −8% construction cost. | 300 pts | Firm Ground |

### Logistics

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Light Loads | +2% hauler speed. | 20 pts | — |
| 1 | Neat Stacks | +3% storage. | 20 pts | — |
| 2 | Short Cuts | +3% speed on roads. | 50 pts | Light Loads |
| 2 | Cart Wright | Start every match with two carts. | 50 pts | Neat Stacks |
| 3 | Packhorse | +5% hauler carry. | 100 pts | Short Cuts |
| 3 | Shelf Life | Stored goods spoil 5% slower. | 100 pts | Cart Wright |
| 4 | Relay Posts | +5% haul range from depots. | 180 pts | Packhorse |
| 4 | Night Shift | Haulers work 5% longer. | 180 pts | Shelf Life |
| 5 | Logistician | +8% hauler speed. | 300 pts | Relay Posts |
| 5 | Grand Depot | +8% storage. | 300 pts | Night Shift |

### Health

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Clean Hands | −2% disease chance. | 20 pts | — |
| 1 | Hardy Folk | +2% thirst and hunger tolerance. | 20 pts | — |
| 2 | Herb Lore | +5% herb yield. | 50 pts | Clean Hands |
| 2 | Steady Nerves | −5% psychosis. | 50 pts | Hardy Folk |
| 3 | Field Kits | Start every match with medicine. | 100 pts | Herb Lore |
| 3 | Rad Sense | Radiation bursts warn a little earlier. | 100 pts | Steady Nerves |
| 4 | Quarantine Drill | Disease spreads 5% slower. | 180 pts | Field Kits |
| 4 | Iron Stomach | Starvation sets in 5% later. | 180 pts | Rad Sense |
| 5 | Healer's Calling | +8% clinic speed. | 300 pts | Quarantine Drill |
| 5 | Long Lives | +8% citizen lifespan. | 300 pts | Iron Stomach |

### Society

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Warm Welcome | +2% happiness. | 20 pts | — |
| 1 | Loud Voice | +2% votes. | 20 pts | — |
| 2 | Story Nights | +3% happiness from fire pits. | 50 pts | Warm Welcome |
| 2 | Honest Ledger | Broken promises cause 5% less unrest. | 50 pts | Loud Voice |
| 3 | Policy Wonk | Policies cost 5% less. | 100 pts | Story Nights |
| 3 | Safe Streets | +5% safety meter. | 100 pts | Honest Ledger |
| 4 | Spin Doctor | +5% votes in a grace-period election. | 180 pts | Policy Wonk |
| 4 | Festival Planner | Festivals last longer. | 180 pts | Safe Streets |
| 5 | Founding Charter | +1 policy slot from the start. | 300 pts | Spin Doctor |
| 5 | People's Champion | +8% happiness. | 300 pts | Festival Planner |

### Trade & Relations

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Haggler | +2% sell price. | 20 pts | — |
| 1 | Friendly Face | +2 disposition with every NPC colony. | 20 pts | — |
| 2 | Bulk Buyer | −3% buy price. | 50 pts | Haggler |
| 2 | Gift Giver | Gifts give +5% more disposition. | 50 pts | Friendly Face |
| 3 | Forecast Trader | See event-driven price swings earlier. | 100 pts | Bulk Buyer |
| 3 | Caravan Guard | Trade routes run 5% faster. | 100 pts | Gift Giver |
| 4 | Contract Lawyer | NPC contracts last longer. | 180 pts | Forecast Trader |
| 4 | Old Friends | Start each match with one NPC colony at 55%. | 180 pts | Caravan Guard |
| 5 | Market Sense | +5% sell price during world events. | 300 pts | Contract Lawyer |
| 5 | Silver Baron | +8% silver from every source. | 300 pts | Old Friends |

### Crisis Preparedness

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Weather Eye | +5% warning time for every crisis. | 20 pts | — |
| 1 | Stockpiler | +3% food and water storage. | 20 pts | — |
| 2 | Sandbagger | −5% sandstorm damage. | 50 pts | Weather Eye |
| 2 | Lead Linings | −5% radiation. | 50 pts | Stockpiler |
| 3 | Dry Season Plan | −5% fertility loss in droughts. | 100 pts | Sandbagger |
| 3 | Emergency Rations | Start every match with a season of rations. | 100 pts | Lead Linings |
| 4 | Storm Cellar | Citizens take shelter 10% faster. | 180 pts | Dry Season Plan |
| 4 | Calm Heads | Crises raise unrest 10% less. | 180 pts | Emergency Rations |
| 5 | Second Wind | +10% production for a season after a crisis ends. | 300 pts | Storm Cellar |
| 5 | Unbreakable | +8% resistance to every crisis. | 300 pts | Calm Heads |

### Exploration

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Long Sight | +5% fog reveal radius. | 20 pts | — |
| 1 | Trail Marks | Scouts move 5% faster. | 20 pts | — |
| 2 | Map Maker | Start with a larger revealed area. | 50 pts | Long Sight |
| 2 | Ruin Reader | Ruins give 5% more salvage. | 50 pts | Trail Marks |
| 3 | Deposit Sense | Ore deposits show 10% further into the fog. | 100 pts | Map Maker |
| 3 | Smoke Signals | NPC colonies are spotted earlier. | 100 pts | Ruin Reader |
| 4 | Pathfinder | Roads cost 5% less. | 180 pts | Deposit Sense |
| 4 | Wanderer's Luck | 5% chance of a supply cache in newly revealed land. | 180 pts | Smoke Signals |
| 5 | Cartographer | Resource deposits show through fog on seed maps. | 300 pts | Pathfinder |
| 5 | Edge of Eden | +8% all salvage. | 300 pts | Wanderer's Luck |

### Survivors Mastery — *Survivors only*

Bonuses that only apply while playing Survivors.

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Old Habits | Survivors: +2% scrap. | 20 pts | — |
| 1 | Father's Watch | Survivors: +2% safety. | 20 pts | — |
| 2 | Daughter's Ledger | Survivors: +3% trade income. | 50 pts | Old Habits |
| 2 | Middle Road | Survivors: +2% to every branch. | 50 pts | Father's Watch |
| 3 | Barter Fires | Survivors: NPC trade opens at 52% instead of 55%. | 100 pts | Daughter's Ledger |
| 3 | Ash Road Memory | Survivors: start with a revealed road. | 100 pts | Middle Road |
| 4 | Jack of Trades | Survivors: settlers fill professions 10% faster. | 180 pts | Barter Fires |
| 4 | Second Chances | Survivors: +5% votes in a grace-period election. | 180 pts | Ash Road Memory |
| 5 | Ember Keepers | Survivors: +5% happiness. | 300 pts | Jack of Trades |
| 5 | Last Light | Survivors: +5% all production. | 300 pts | Second Chances |

### The Hunters Mastery — *The Hunters only*

Bonuses that only apply while playing The Hunters.

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Ranger's Pace | Hunters: +2% hauling speed. | 20 pts | — |
| 1 | Frontier Grit | Hunters: +3% work speed. | 20 pts | — |
| 2 | Steady Aim | Hunters: +3% hunting yield. | 50 pts | Ranger's Pace |
| 2 | Saddle Leather | Hunters: +5% leather. | 50 pts | Frontier Grit |
| 3 | Hand-Loaded | Hunters: +5% gun crafting. | 100 pts | Steady Aim |
| 3 | Range Riders | Hunters: ranches +5%. | 100 pts | Saddle Leather |
| 4 | Timberhold Pride | Hunters: +5% wood. | 180 pts | Hand-Loaded |
| 4 | Homestead | Hunters: houses hold one more person. | 180 pts | Range Riders |
| 5 | Big Sky | Hunters: +10% fog reveal. | 300 pts | Timberhold Pride |
| 5 | Legend of the West | Hunters: +5% all food. | 300 pts | Homestead |

### Militia Mastery — *Militia only*

Bonuses that only apply while playing Militia.

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Drill Sergeant | Militia: +2% builder speed. | 20 pts | — |
| 1 | Shift Whistle | Militia: +3% factory speed. | 20 pts | — |
| 2 | Ration Cards | Militia: −5% food upkeep. | 50 pts | Drill Sergeant |
| 2 | Steel Quota | Militia: +5% steel. | 50 pts | Shift Whistle |
| 3 | Live Current | Militia: +5% power. | 100 pts | Ration Cards |
| 3 | Plasma Licence | Militia: plasma goods cost 5% less. | 100 pts | Steel Quota |
| 4 | Line Discipline | Militia: −5% unrest. | 180 pts | Live Current |
| 4 | Arsenal Ledger | Militia: weapons sell for 5% more. | 180 pts | Plasma Licence |
| 5 | Fortified | Militia: walls give +10% safety. | 300 pts | Line Discipline |
| 5 | War Economy | Militia: +5% all industry. | 300 pts | Arsenal Ledger |

### Ashen Mastery — *Ashen only*

Bonuses that only apply while playing Ashen.

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Kindling | Ashen: +2% charcoal. | 20 pts | — |
| 1 | Ruby Fever | Ashen: +5% rubies when mining. | 20 pts | — |
| 2 | Furnace Heart | Ashen: +3% smelting speed. | 50 pts | Kindling |
| 2 | Quiet Chains | Ashen: slaves cause 5% less unrest. | 50 pts | Ruby Fever |
| 3 | Ashen Brand | Ashen: +5% ore. | 100 pts | Furnace Heart |
| 3 | Pyre Light | Ashen: fire pits give +3% happiness. | 100 pts | Quiet Chains |
| 4 | Cold Mind | Ashen: −5% psychosis (Vesper). | 180 pts | Ashen Brand |
| 4 | Artist of Fire | Ashen: +5% furnace output (Blowtorch). | 180 pts | Pyre Light |
| 5 | Smoke Screen | Ashen: NPC colonies start 5 points less wary. | 300 pts | Cold Mind |
| 5 | Everything Burns | Ashen: +5% all fuel. | 300 pts | Artist of Fire |

### Droids Mastery — *Droids only*

Bonuses that only apply while playing Droids.

| Tier | Node | Effect | Cost | Requires |
|---|---|---|---|---|
| 1 | Boot Sequence | Droids: start with one extra droid. | 20 pts | — |
| 1 | Clean Current | Droids: −2% charge drain. | 20 pts | — |
| 2 | Firmware I | Droids: +3% work speed. | 50 pts | Boot Sequence |
| 2 | Cradle Design | Droids: cradles charge 5% faster. | 50 pts | Clean Current |
| 3 | Firmware II | Droids: +5% construction speed. | 100 pts | Firmware I |
| 3 | Cold Logic | Droids: −5% unrest. | 100 pts | Cradle Design |
| 4 | Spare Chassis | Droids: fabrication costs 5% less. | 180 pts | Firmware II |
| 4 | Storm Siphon | Droids: storms recharge the grid 5%. | 180 pts | Cold Logic |
| 5 | Firmware III | Droids: +5% to everything. | 300 pts | Spare Chassis |
| 5 | We Are One | Droids: +5% power output. | 300 pts | Storm Siphon |

---

## Buildings

Power: **none** · **upgrade** (needs power from tier II) · **required**. Water: **none** · **uses** (consumes water) · **network** (must connect to the water network). Access: *No* = can't build, ★ = team speciality.

### Systems

- **Construction priority** — Every construction site has a priority. Free builders always take the highest-priority site first; idle builders wait at the Builder's Depot.
- **Roles & professions** — Settlers do anything that needs doing. Builders only build, haulers only haul. Professions are assigned from one menu with a headcount each.
- **Power** — Generators feed power poles. Any building inside a pole's radius is powered. Some buildings never need power; some only need it to keep upgrading.
- **Water** — Water is consumed by people, by some buildings, and in some construction and upgrades. Pumps, towers and pipes distribute it like Cities: Skylines.
- **Upgrades** — On-site tiers either make a building more efficient or unlock a new set of recipes. The team tree and the player tree stack on top.
- **Team access** — Teams can't build some buildings at all, and each has specialities (★). Filter by team below to see the differences.

### Unique buildings (one per team)

- **Survivors:** Rough idea: Barter Post — a crossroads market that steadies NPC trade routes (suggestion).
- **The Hunters:** Rough idea: Ranger Station — hunting, ranching and trail scouting from one lodge (suggestion).
- **Militia:** Rough idea: Assembly Line — a powered mega-workshop that chains two recipes (suggestion).
- **Ashen:** Rough idea: Pyre Gallery — fire as art; fear and loyalty effects on the town (suggestion).
- **Droids:** Rough idea: Hive Core — the old Data Centre, repurposed (function TBD — no longer an elimination rule).

### Civic & Core

| Building | What it does | Worked by | Power | Water | Tiers | Can't build | ★ |
|---|---|---|---|---|---|---|---|
| ♜ Town Centre | The warlords' seat and the heart of the town. Settlers arrive here; first storage. | Warlords (seat) | none | none | I — Camp: seat and small storage · II — Town Hall: era 2 checklist · III — Capitol: era 3 checklist | — | — |
| ⚖ Policy Hall | Spend resources to enact policies. A small cap on active policies; some policies raise the cap. Name TBD. | Clerks | none | none | I — 2 policy slots · II — 3 slots, harsher edicts · III — referendums | — | — |
| ☷ Election Square | Where promises are made and votes are counted. Lose once and you get a grace year; lose twice and you're out. | — | none | none | I — Speeches · II — Rallies (more promise options) | — | — |

### Housing

| Building | What it does | Worked by | Power | Water | Tiers | Can't build | ★ |
|---|---|---|---|---|---|---|---|
| ⌂ Shack | Scrap shelter. Cheap, cold, unhappy. | — | none | none | I — 4 people | D | — |
| ⌂ Bunkhouse | Shared housing for workers near their jobs. | — | none | none | I — 8 people · II — 12 people | D | — |
| ⌂ Brick House | Solid family homes. Needs bricks; happier residents. | — | none | uses | I — 6 people · II — 8 people, + happiness · III — Plumbing (needs water network) | D | — |
| ▥ Apartment Block | Late-era stacked housing. | — | required | network | I — 24 people · II — 36 people | D | — |

### Labour & Storage

| Building | What it does | Worked by | Power | Water | Tiers | Can't build | ★ |
|---|---|---|---|---|---|---|---|
| ⚒ Builder's Depot | Builders wait here between jobs and serve construction sites by priority. | Builders | none | none | I — 4 builders · II — 8 builders, better tools | — | — |
| ⇄ Haulers' Post | Haulers base here and move goods between buildings. | Haulers | none | none | I — 4 haulers · II — Carts | — | — |
| ▤ Stockpile Yard | Open-air storage for raw materials. | — | none | none | I — Open yard · II — Covered | — | — |
| ▦ Warehouse | Covered storage for goods; protects from storms. | Haulers | upgrade | none | I — Shelving · II — Racking · III — Cold room (needs power) | — | — |

### Food

| Building | What it does | Worked by | Power | Water | Tiers | Can't build | ★ |
|---|---|---|---|---|---|---|---|
| ✿ Forager's Hut | Berries, herbs and mushrooms from the wild. | Foragers | none | none | I — Forage radius · II — Herb drying | D | H |
| ➶ Hunter's Lodge | Game meat and hides. | Hunters | none | none | I — Small game · II — Big game, trapping | D | H |
| ≈ Fishing Shack | Fish from rivers and lakes; a drought shrinks the catch. | Fishers | none | none | I — Rods · II — Traps | D | — |
| ▒ Farm Field | Crops on the fertility map. Needs water to survive a drought. | Farmers | none | uses | I — Grain and vegetables · II — Irrigated rows · III — Crop rotation | D | H |
| ♞ Ranch | Pens and pasture: milk, eggs, meat, leather and wool. | Ranchers | none | uses | I — Pens · II — Pasture · III — Breeding | D | H |
| ⌂ Greenhouse | Year-round growing, drought or not. | Farmers | required | network | I — Greenhouse · II — Hydroponics | D | M |
| ◎ Mill | Grain to flour. | Millers | upgrade | none | I — Hand mill · II — Powered mill | D | — |
| ♨ Bakery | Flour and water into bread. | Bakers | none | uses | I — Oven · II — Bakehouse | D | — |
| ♨ Kitchen | Cooked meals from raw food — better meals, happier people. | Cooks | none | uses | I — Stew pot · II — Canteen · III — Mess hall | D | — |
| ≋ Smokehouse | Smoked and salted food that keeps through a crisis. | Butchers | none | none | I — Smoking racks · II — Curing cellar | D | H |
| ❄ Granary | Food storage. The cold-store tier needs power. | Haulers | upgrade | none | I — Granary · II — Cold store (needs power) | D | — |

### Water

| Building | What it does | Worked by | Power | Water | Tiers | Can't build | ★ |
|---|---|---|---|---|---|---|---|
| ☂ Water Collector | Rain, dew and fog nets. Small and weather-dependent. | Water collectors | none | none | I — Barrels · II — Fog nets | — | — |
| ◯ Well | Groundwater. One of the last sources to dry in a drought. | Water collectors | none | none | I — Hand well · II — Deep well | — | — |
| ⇡ Water Pump | Pumps river or lake water into the network. | Pump operators | upgrade | network | I — Hand pump · II — Powered pump · III — Aquifer pump | — | M |
| ▲ Water Tower | Distributes water across its network area. | — | none | network | I — Tower · II — Pressure tower | — | — |
| ▭ Water Tank | Stores water for the next drought. | — | none | network | I — Tank · II — Large tank | — | — |
| ▬ Dam | Holds the river through a drought — and lets it go when the rains return. | Pump operators | none | none | I — Weir · II — Dam · III — Floodgates | — | H |
| ✚ Purifier | Removes disease from water; the top tier strips radiation. | Pump operators | upgrade | network | I — Sand filter · II — Boiler · III — Rad scrubber | — | — |
| ≡ Irrigation Channel | Carries water — and fertility — to fields. | — | none | network | I — Ditch · II — Lined channel | D | H |

### Power

| Building | What it does | Worked by | Power | Water | Tiers | Can't build | ★ |
|---|---|---|---|---|---|---|---|
| ⚡ Burner Generator | Wood and charcoal power — the first grid. | Electricians | none | none | I — Burner · II — Twin burner | — | A |
| ⚡ Coal Plant | Big output from coal. | Electricians | none | uses | I — Boiler · II — Turbine hall | — | M |
| ✣ Wind Turbine | Free power that rises in sandstorms. | — | none | none | I — Turbine · II — Tall turbine | — | — |
| ☀ Solar Array | Daytime power from salvaged panels. | — | none | none | I — Panels · II — Tracking array | H A | D |
| ▮ Battery Bank | Stores power through the night. | — | none | none | I — Lead cells · II — Capacitor bank | H | D |
| ⚡ Fuel Turbine | Huge output from refinery fuel. | Electricians | none | uses | I — Turbine | — | M |
| ┃ Power Pole | Powers every building inside its radius. Place more poles to reach further. | — | none | none | I — Wooden pole · II — Steel pylon (wider radius) | — | D |
| ◉ Charging Cradle | Where droids charge every night. Their 'food'. | — | required | none | I — Cradle · II — Induction pad · III — Wireless node | S H M A | D |

### Raw Materials

| Building | What it does | Worked by | Power | Water | Tiers | Can't build | ★ |
|---|---|---|---|---|---|---|---|
| ♣ Woodcutter's Camp | Fells trees for wood. | Woodcutters | none | none | I — Axes · II — Saws | — | H |
| ♧ Forester's Lodge | Replants what the woodcutters take. | Foresters | none | uses | I — Saplings · II — Nursery | — | H |
| ▲ Quarry | Stone and clay from rock faces. | Quarry workers | none | none | I — Picks · II — Blasting | — | H |
| ⛏ Mine | Ore, coal, sulphur and gems from shafts. | Miners | upgrade | none | I — Adit · II — Shaft (power for lifts) · III — Deep shaft | — | A |
| ⚙ Scrapyard | Salvage from ruins: scrap, rare scrap and components. | Scavengers | none | none | I — Pickers · II — Cutting torches | — | — |
| ◒ Clay Pit | Clay for bricks and pottery. | Quarry workers | none | uses | I — Pit | — | — |
| ◇ Salt Pan | Salt for preserving food. | Workers | none | uses | I — Pans | D | — |
| ⛽ Oil Derrick | Crude oil for fuel. | Workers | required | none | I — Derrick · II — Pumpjack | H | M |

### Industry

| Building | What it does | Worked by | Power | Water | Tiers | Can't build | ★ |
|---|---|---|---|---|---|---|---|
| ♨ Charcoal Kiln | Wood into charcoal. | Charcoal burners | none | none | I — Earth kiln · II — Brick kiln | — | A |
| ▦ Brick Kiln | Clay into bricks. | Brickmakers | none | uses | I — Kiln · II — Tunnel kiln | — | — |
| 🜂 Smelter | Ore into metal. Upgrades unlock new recipes: copper and tin → bronze and iron → steel → hardened steel. | Smelters | upgrade | uses | I — Smelter: copper, tin · II — Alloys: bronze, iron · III — Furnace: steel · IV — Foundry: hardened steel | — | A |
| ⚒ Smithy | Tools and blades — knives, axes, swords. | Smiths | none | none | I — Forge · II — Toolmaker · III — Bladesmith | — | H |
| ⌖ Gunsmith | Handguns, rifles and ammunition as goods. | Gunsmiths | upgrade | none | I — Pipe guns · II — Rifles · III — Precision arms | — | H |
| ◫ Tannery | Hides into leather and leather armour. | Tanners | none | uses | I — Racks · II — Tannery | D | H |
| ≣ Weaver | Cloth and clothes. | Weavers | upgrade | none | I — Loom · II — Powered loom | — | — |
| ◌ Glassworks | Glass for greenhouses, optics and bottles. | Glassblowers | upgrade | none | I — Furnace · II — Optics bench | — | — |
| ⚙ Workshop | Mechanical parts and repairs. | Mechanics | upgrade | none | I — Bench · II — Machine shop · III — Assembly line (power) | — | M |
| ⌁ Electronics Lab | Circuit salvage into electronics. | Mechanics | required | none | I — Salvage bench · II — Fabricator | H | M D |
| ✺ Chemical Works | Gunpowder, fertiliser and medicine. | Chemists | upgrade | uses | I — Vats · II — Refinery | — | — |
| ✦ Laser Optics Bench | Laser rifles and optics as goods. | Mechanics | required | none | I — Bench | H A | M |
| ⚛ Plasma Works | Plasma cells and plasma weapons as goods. | Engineers | required | uses | I — Cell line · II — Weapon line | S H A | M |

### Health

| Building | What it does | Worked by | Power | Water | Tiers | Can't build | ★ |
|---|---|---|---|---|---|---|---|
| ✚ Herbalist | Herbs into remedies for mild sickness. | Herbalists | none | none | I — Drying shed · II — Apothecary | D | H |
| ✚ Clinic | Treats disease and injury. Upgrades to a hospital. | Medics | upgrade | uses | I — Clinic · II — Infirmary · III — Hospital | D | — |
| ☢ Rad Shelter | Shelter during radiation bursts. | — | none | none | I — Cellar · II — Lead-lined bunker | — | — |
| † Graveyard | The dead must go somewhere — unrest and disease if ignored. | Undertakers | none | none | I — Graves · II — Crematorium | D | — |
| ⚙ Repair Bay | Droids are repaired, not healed. | — | required | none | I — Bay · II — Rebuild line | S H M A | D |

### Society & Safety

| Building | What it does | Worked by | Power | Water | Tiers | Can't build | ★ |
|---|---|---|---|---|---|---|---|
| ▥ Walls | Raise the safety meter nearby — people feel safer and happier. | — | none | none | I — Scrap wall · II — Stone wall · III — Steel wall | — | M |
| ♖ Watchtower | Safety, plus earlier crisis spotting. | Watch | none | none | I — Lookout · II — Signal tower | — | — |
| ♨ Fire Pit | A gathering spot — happiness for nearby homes. | — | none | none | I — Fire pit | D | — |
| ⚱ Tavern | Alcohol becomes happiness. | Barkeeps | none | uses | I — Bar · II — Saloon | D | H |
| ◬ Loudspeaker Tower | Propaganda — votes up, unrest down, trust slowly spent. | Propagandists | required | none | I — Speakers · II — Broadcast | H | — |
| ✠ Breaking Pens | Ash Rites: slave labour that ignores happiness but raises unrest. | Overseers | none | none | I — Pens · II — Work camp | S H M D | A |

### Research

| Building | What it does | Worked by | Power | Water | Tiers | Can't build | ★ |
|---|---|---|---|---|---|---|---|
| ✎ Research Shack | Unlocks most non-standard content. | Researchers | none | none | I — Shack · II — Study | — | — |
| ⚗ Laboratory | Advanced research for the later eras. | Researchers | required | uses | I — Lab · II — Research complex | — | M |

### Trade

| Building | What it does | Worked by | Power | Water | Tiers | Can't build | ★ |
|---|---|---|---|---|---|---|---|
| ⚖ Trading Post | Routes to NPC micro-colonies. Trade opens at 55% disposition. | Traders | none | none | I — Post · II — Caravan stop | — | — |
| $ Market Exchange | The off-screen global market. Prices move only with world events. | Traders | none | none | I — Exchange · II — Broker's desk | — | — |
| ⛟ Caravan Yard | More and longer trade routes. | Traders | none | none | I — Yard · II — Caravan network | — | — |

