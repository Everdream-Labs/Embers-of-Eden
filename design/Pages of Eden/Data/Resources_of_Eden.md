# Resources of Eden
**Source of truth for `Resources of Eden.html`**
**Last updated:** 3 November 2026 (city-builder pivot — five locked teams)
**Data revision:** `teams-2026-11-03` (older browser edits are archived, not loaded over this)

This file holds the full detail. The HTML is the readable, filterable version. Edit here, then sync batches into the HTML `DEFAULT_DATA` (ask the assistant to "sync Resources of Eden from the md"). Quick tweaks made in the page with **Edit → Save into HTML** should be copied back here at the next sync.

Follows `Visions_of_Eden.md` (locked direction).

---

## Teams and access

**Five playable teams, locked pairs — no mixing, no union rule.** Pick one team at the top of the page (or **All teams** for the overview). Only these five ever get access marks; Warlords of the Wastes are NPC factions and never appear here.

| Id | Team | Warlords | Accent | Identity in this book |
|---|---|---|---|---|
| `survivors` | Survivors | Viktor & Ayla | #8b9096 | Neutral — ~80% of everything. No boosts or blocks; special alloys and plasma undecided. |
| `hunters` | The Hunters | Brick & Twig | #a3a84e | ★ food, animal products, wood, stone, guns, bows, leather gear. ▼ electronics, power. ✕ laser and plasma. |
| `militia` | Militia | Brother & Sister (names TBD) | #a4ae74 | ★ steel, concrete, mechanical parts, power, electronics, heavy guns, plate, plasma. ▼ farming, foraging, the land. |
| `ashen` | Ashen | Blowtorch & Vesper | #ff5a1f | ★ charcoal, coal, iron, glass, fuel, gems (rubies), incendiaries, blasting, fireproof gear. Only team with Human Meat. ▼ medicine and health. |
| `droids` | Droids | Droid 0001 | #4fb0ff | ✕ the whole Produce tab (no food, cloth, leather). ★ power, electronics, components, salvage. Water use ?. |

### Marks

| Mark | State | Meaning |
|---|---|---|
| ✓ | yes | Can produce it (default for every node unless overridden) |
| ★ | boost | Stronger / faster than baseline — one of the team's strengths |
| ▼ | weak | Can produce it, but slower or at higher cost — one of the team's weak (≈60%) branches |
| ⇄ | import | **Import only** — can use stock bought or traded in, but cannot produce it |
| ? | tbd | Undecided |
| ✕ | no | Cannot acquire or process it |

- **Weak (▼) is new** — added so "weak at X" identities (Hunters electronics/power, Militia farming, Ashen medicine) don't have to be forced into ✓ or ✕.
- **Special alloys** (Hardened, Stainless, Titanium) are `default: tbd` for every team — decided per team later (Visions open point 3). Tier V gear is forged from Hardened Steel ingots, which can be imported, so Tier V items stay ✓.
- **Buildings are different:** if a team cannot construct a building (Warlords of Eden), it stays locked even when the resources exist.
- **Crafting with imports is allowed:** a blacksmith can forge imported ingots into better gear.
- **Market:** the global market's prices move **only with world events** (drought, sandstorm, radiation burst) — never with the player's own sales.

### Page / links

- **Hash format:** `#<teamId>` · `#<teamId>/<tab>` · `#<teamId>/<tab>/open:<nodeId>` · `#all/<tab>`. Tabs: `resources`, `produce`, `tools`. Old `#warlord+warlord` links still resolve to the first Warlord's team.
- **Codex nav:** Visions · Warlords · Resources · Maps (Arms removed — archived). Warlords link → `Warlords of Eden.html#<teamId>`; Maps link → `Maps of Eden.html#map/<teamId>`.
- The chosen team is remembered in `localStorage` key `edenCodex.team`.
- **All teams view:** every tile shows small team-initial marks (S H M A D) for any team that differs from ✓. Each tab also has a **Team access at a glance** table.

---

## Resources tab

Natural resources and every refining step above them — ore to ingot to alloy — plus the two utilities, Water and Power. Follow the lines downward: each node is made from the nodes feeding into it.

**Bands (top → bottom):** Early — Gathered · Early — Processed · Mid — Gathered · Mid — Refined · Mid — Components · Late — Gathered · Late — Refined · Late — Advanced & alloys
**Lanes (left → right):** Water & Power · Timber · Stone · Clay · Sand & Glass · Tin · Copper · Coal & Iron · Alloys · Alloys · Scrap · Components · Chemistry · Precious · Gems

| Code | Name | Band | Lane | Made from | Extra inputs | Made / gathered at | Gate | Access overrides | Description / notes |
|---|---|---|---|---|---|---|---|---|---|
| Wa | **Water** | Early Gathered | Water & Power | — | — | Well · Water Collector · Pump | Pumps need a river, lake or groundwater; towers and pipes carry it (coverage) | droids: tbd | Drunk by every colonist, used by some buildings (kitchens, brick kilns, paper mills, cement works, distilleries, pastures) and occasionally consumed in construction and upgrades. Cities: Skylines-style network. Droughts dry rivers — fill tanks and dams before the warning runs out. — Droid water use open (Visions point 7). |
| Pw | **Power** | Early Processed | Water & Power | Wood | Charcoal, Coal, Fuel | Generator → Power Poles | Any building inside a pole's radius is powered — radius only | hunters: weak, militia: boost, droids: boost | Generators burn wood/charcoal early, coal from Mid, fuel late. Some buildings need power to keep upgrading. Droids charge nightly — power is their food, so their grid is far larger. |
| Wd | **Wood** | Early Gathered | Timber | — | — | Lumber Camp | Any axe — Stone Axe for scrub/deadfall; softwood needs an Iron Axe | hunters: boost | Core building material and early fuel. |
| Ch | **Charcoal** | Early Processed | Timber | Wood | — | Charcoal Kiln (suggestion) | — | ashen: boost | Early fuel for kilns, glass, gunpowder, generators and smelting before coal. |
| Pp | **Paper** | Mid Refined | Timber | Wood, Water | — | Paper Mill (suggestion) | — | — | Research notes and blueprints for research buildings; wraps dynamite (suggestion). |
| Hw | **Hardwood** | Late Gathered | Timber | Wood | Steel Axe (tools) | Lumber Camp (upgraded) | Steel Axe | hunters: boost | Dense timber for premium buildings, bows and fittings (suggestion). |
| St | **Stone** | Early Gathered | Stone | — | — | Quarry | Stone Pick | hunters: boost | Foundations, walls, early tools. First rung of the mining ladder. |
| Cn | **Concrete** | Late Refined | Stone | Stone, Coal, Water | — | Cement Works (suggestion) | — | militia: boost | Dams, water towers and advanced buildings. |
| Cl | **Clay** | Early Gathered | Clay | — | — | Clay Pit (suggestion) | — | — | Riverbank clay for bricks, pottery and kilns. |
| Br | **Bricks** | Mid Refined | Clay | Clay, Charcoal, Water | — | Brick Kiln | — | — | Fired building material for upgraded structures. |
| Sd | **Sand** | Early Gathered | Sand & Glass | — | — | Sand Pit (suggestion) | — | — | Added so Glass has an input (suggestion). |
| Gl | **Glass** | Mid Refined | Sand & Glass | Sand, Charcoal | — | Glassworks (suggestion) | — | ashen: boost | Windows, lenses, scopes, lab equipment, electronics. |
| Sn | **Tin** | Mid Gathered | Tin | — | — | Mine | Mining I + Bronze Pick | — | Alloyed with copper into bronze. |
| Bz | **Bronze** | Mid Refined | Tin | Tin, Copper | — | Smelter | — | — | Second material tier. |
| Cu | **Copper** | Mid Gathered | Copper | — | — | Mine | Mining II + Bronze Pick | — | Bronze, wire, ammunition, electrics. |
| Wr | **Wire** | Mid Refined | Copper | Copper | — | Wireworks (suggestion) | — | — | Power poles, electronics, traps, fences. |
| Co | **Coal** | Mid Gathered | Coal & Iron | — | — | Mine | Mining IV (see notes) | ashen: boost | High-heat fuel for iron, steel, bricks, concrete, generators. — Era vs ladder still to reconcile. |
| Fe | **Iron** | Late Gathered | Coal & Iron | Coal | Iron Pick (tools) | Mine → Smelter | Mining III + Iron Pick | ashen: boost | Third material tier. |
| Sl | **Steel** | Late Refined | Coal & Iron | Iron, Coal | — | Smelter (Blast Furnace) | — | militia: boost | Fourth material tier. Every smelter can make regular steel. |
| HS | **Hardened Steel** | Late Advanced & alloys | Coal & Iron | Steel, Rare Components | — | Alloy Foundry (suggestion) | — | default: tbd | Special Alloy, fifth material tier. Who smelts/enhances it is undecided; anyone can import and forge it. |
| SS | **Stainless Steel** | Late Advanced & alloys | Alloys | Steel, Rare Scrap | — | Alloy Foundry (suggestion) | — | default: tbd | Special Alloy — corrosion-proof gear (suggestion). |
| Ti | **Titanium** | Late Advanced & alloys | Alloys | Rare Scrap, Fuel | — | Alloy Foundry (suggestion) | — | default: tbd | Special Alloy — light, strong frames (suggestion). |
| Sc | **Scrap** | Early Gathered | Scrap | — | — | Scrapyard / dismantling | — | — | Generic wasteland material from ruins and dismantling. |
| Nl | **Nails** | Mid Refined | Scrap | Scrap | — | Blacksmith | — | — | Fasteners for building upgrades. |
| MP | **Mechanical Parts** | Mid Components | Scrap | Scrap, Nails, Bronze | — | Workshop (suggestion) | — | militia: boost, droids: boost | Gears and fittings for guns, machines, generators, vehicles. |
| RS | **Rare Scrap** | Late Gathered | Scrap | Scrap | — | Sorting Yard | — | droids: boost | Valuable salvage sorted from scrap. |
| RC | **Rare Components** | Mid Refined | Components | Scrap | — | Scrapyard (salvage) | — | droids: boost | Old-world circuitry, bearings, optics. |
| El | **Electronics** | Late Refined | Components | Rare Components, Wire, Glass | — | Electronics Lab (suggestion) | — | hunters: weak, militia: boost, droids: boost | Radios, charge cells, droid parts, laser components. |
| LC | **Laser Components** | Late Advanced & alloys | Components | Electronics, Glass | — | Electronics Lab (suggestion) | — | hunters: no, droids: boost | Optics and emitters for laser weapons. Visions: Hunters never process laser components. *(new)* |
| Sa | **Salt** | Early Gathered | Chemistry | — | — | Salt Pan (suggestion) | — | — | Preserves food, cures leather. |
| Su | **Sulphur** | Mid Gathered | Chemistry | — | — | Mine / vents | — | — | Key gunpowder input. |
| Gp | **Gunpowder** | Mid Components | Chemistry | Sulphur, Charcoal | Fertiliser (produce) | Munitions Workshop | — | — | Ammunition, blasting charges, explosives. Fertiliser stands in for nitrates (suggestion). |
| Fu | **Fuel** | Late Refined | Chemistry | Coal | Alcohol (produce) | Refinery (suggestion) | — | ashen: boost | Generators, vehicles, flamethrowers. |
| PC | **Plasma Cells** | Late Advanced & alloys | Chemistry | Fuel, Electronics | — | Laboratory (suggestion) | — | hunters: no, militia: boost, survivors/ashen/droids: tbd | Charge cores for plasma weapons. *(new)* |
| Ag | **Silver** | Early Gathered | Precious | — | — | Mine | — | — | Primary currency. Market prices move only with world events. |
| Au | **Gold** | Mid Gathered | Precious | — | — | Mine | Mining V | — | Unlocks with the Mid era. Price moves with world events only. |
| GI | **Gold Ingots** | Late Refined | Precious | Gold, Coal | — | Smelter / Mint | — | — | Upgrades, trade, jewellery. |
| PG | **Pure Gold Ingots** | Late Advanced & alloys | Precious | Gold Ingots | — | Mint (suggestion) | — | — | Late era checklists and wonders (suggestion). |
| Gm | **Gems** | Late Gathered | Gems | — | Steel Pick (tools) | Deep Mine | Steel Pick | ashen: boost | Rubies and rare stones. |
| Jw | **Jewellery** | Late Advanced & alloys | Gems | Gems, Gold Ingots, Silver | — | Jeweller (suggestion) | — | — | Luxury good — trade, happiness, checklists (suggestion). |

---

## Produce tab

Farms, pastures, foraging, hunting and fishing — and the kitchen chains that turn them into food. **Droids cannot use anything on this tab** (every node has `droids: no`). Water moved to the Resources tab as a utility; kitchen and pasture nodes list it as an extra input.

**Bands (top → bottom):** Wild — Forage, fish, hunt · Farms — Crops & pastures · Raw — Raw goods · Processed — Workshops · Kitchen — Meals · Late — Bonus foods
**Lanes (left → right):** Fish · Berries · Herbs · Wild Game · Grain · Vegetables · Cotton · Cattle · Poultry · Pigs & Goats · Wild Beasts · Dark Larder

| Code | Name | Band | Made from | Extra inputs | Made at | Access overrides (plus droids: no) | Description |
|---|---|---|---|---|---|---|---|
| Fi | **Fish** | Wild | — | Hook & Line (tools) | Fishing Hut / dock | hunters: boost, militia: weak | Edible raw; better smoked. |
| Be | **Berries** | Wild | — | — | Forager → Orchard | militia: weak | Early forage. |
| He | **Herbs** | Wild | — | — | Herb Garden (suggestion) | militia: weak | Medicine and bandages. |
| WG | **Wild Game** | Wild | — | — | Hunting Lodge | hunters: boost, militia: weak | Meat and hides. |
| Gr | **Grain** | Farms | — | — | Farm | hunters: boost, militia: weak | Flour, bread, alcohol. Fertility map; drought strips fertility. |
| Vg | **Vegetables** | Farms | — | — | Farm | hunters: boost, militia: weak | Stews and meals (suggestion). |
| Ct | **Cotton** | Farms | — | — | Farm | militia: weak | Cotton → Cloth. |
| Ca | **Cattle** | Farms | — | Water | Pasture | hunters: boost, militia: weak | Milk, meat, leather, manure. Livestock drink water. |
| Ck | **Chickens** | Farms | — | — | Pasture / coop | hunters: boost, militia: weak | Eggs and meat. |
| Pg | **Pigs & Goats** | Farms | — | — | Pasture | hunters: boost, militia: weak | Meat, goat milk, manure (suggestion). |
| WT | **Wild Taming** | Farms | — | — | Ranch (suggestion) | default: no, hunters: boost | Tame and breed wild map animals (suggestion) — Hunters-only idea; remove if it doesn't fit. |
| Mk | **Milk** | Raw | Cattle, Pigs & Goats | — | — | hunters: boost | Raw; cheese in the kitchen. |
| Eg | **Eggs** | Raw | Chickens | — | — | hunters: boost | Raw or cooked. |
| Mt | **Meat** | Raw | Cattle, Pigs & Goats, Chickens, Wild Game, Wild Taming | — | Butcher (suggestion) | hunters: boost | Far better cooked or smoked. |
| Lt | **Leather** | Raw | Cattle, Wild Game, Wild Taming | — | Tannery (suggestion) | hunters: boost | Armour, bows, slings, saddles. |
| Hm | **Human Meat** | Raw | — | — | Ash Rites (Ashen only) | default: no, ashen: yes | Ashen-only cannibalism branch. Fear/unrest/food-quality effects TBD. |
| Al | **Alcohol** | Processed | Berries, Grain | Water | Distillery (suggestion) | — | Trade good, medicine, fuel, molotovs. |
| Md | **Medicine** | Processed | Herbs, Alcohol | — | Apothecary (suggestion) | ashen: weak | Disease and radiation sickness — stockpile before radiation bursts. |
| Fl | **Flour** | Processed | Grain | — | Mill (suggestion) | — | Ground grain. |
| Fz | **Fertiliser** | Processed | Cattle, Pigs & Goats, Chickens | — | Manure Pit (suggestion) | — | Boosts fertility; nitrates for gunpowder (suggestion). |
| Cf | **Cloth** | Processed | Cotton | — | Weaver | — | Clothing, padded armour, bandages, gas masks, rope. |
| Bd | **Bread** | Kitchen | Flour | Water | Kitchen | — | Staple meal (suggestion). |
| Sw | **Hearty Stew** | Kitchen | Meat, Vegetables | Water | Kitchen | — | Combined ingredients yield more (suggestion). |
| Cs | **Cheese** | Kitchen | Milk | Salt | Creamery (suggestion) | — | Long-keeping dairy. |
| Sm | **Smoked / Preserved Food** | Kitchen | Meat, Fish | Salt, Charcoal | Smokehouse | hunters: boost | Trade and crisis stockpiles. |
| Fs | **Feast** | Late | Bread, Stew, Cheese, Alcohol | — | Kitchen (late) | — | Minor late bonuses TBD. |
| Rt | **Field Rations** | Late | Smoked Food, Bread | — | Kitchen | — | For scavengers, traders, expeditions (suggestion). |

---

## Tools & Equipment tab

Tools, weapons and armour are all **goods** the colony crafts from resources — used by workers as tools, stockpiled for safety, or sold. **No combat stats** (combat is shelved; Arms of Eden is archived). Every item upgrades from the one above it in its lane.

**Bands (top → bottom):** Tier I — Stone / scrap · Early · Tier II — Bronze · Mid · Tier III — Iron · Late · Tier IV — Steel · Late · Tier V — Hardened steel · Late
**Lanes (left → right):** Axes · Picks · Farm Tools · Building Tools · Fishing Gear · Butchery · Melee Weapons · Bows · Firearms · Heavy Guns · Energy Weapons · Explosives & Fire · Light Armour · Heavy Armour · Hazard & Tech

### Tools

| Tier | Axes | Picks | Farm Tools (droids ✕) | Building Tools | Fishing Gear (droids ✕) | Butchery (droids ✕) |
|---|---|---|---|---|---|---|
| I · Stone | Stone Axe — scrub & deadfall | Stone Pick — stone, clay, salt | Stone Hoe | Stone Mallet | Hook & Line | Flint Knife |
| II · Bronze | Bronze Axe | Bronze Pick — Mining I–II | Bronze Sickle | Bronze Saw | Fishing Net | Bronze Knife |
| III · Iron | Iron Axe — **softwood** | Iron Pick — Mining III–IV | Iron Scythe | Iron Toolset — the generic **"Tools"** good | Iron Harpoon | Iron Cleaver |
| IV · Steel | Steel Axe — **hardwood** | Steel Pick — gold & gems (ashen ★) | Steel Plough | Steel Toolset | Trawler Kit | Steel Skinning Kit |
| V · Hardened | Hardened Axe | Hardened Pick (ashen ★) | — | Hardened Toolset | — | — |

Inputs follow the tier material plus wood; fishing gear uses cloth.

### Weapons (goods)

| Lane | Item (tier) | Inputs | Made at | Access overrides |
|---|---|---|---|---|
| Melee | Scrap Knife (I) → Bronze War Axe (II) → Iron Sword (III) → Steel Longblade (IV) → Hardened Warblade (V) | Scrap · Bronze+Wood · Iron+Wood · Steel+Wood · Hardened+Wood | Workbench / Blacksmith | — |
| Bows | Sling (I) → Short Bow (II) → Longbow (III) → Compound Bow (IV) | Leather+Stone · Wood+Leather · Wood+Iron+Leather · Steel+Wire+Cloth | Workbench / Bowyer (suggestion) | hunters: boost, droids: no |
| Firearms | Pipe Pistol (II) → Bolt Rifle (III) → Repeater Rifle (IV) → Marksman Rifle (V) | Scrap+Bronze+Gunpowder · Iron+Wood+Gunpowder · Steel+Mech Parts+Gunpowder · Hardened+Glass+Mech Parts | Gunsmith | hunters: boost |
| Heavy Guns | Scattergun (III) → Heavy Machine Gun (IV) | Iron+Wood+Gunpowder · Steel+Mech Parts+Gunpowder | Gunsmith / Armoury | HMG: militia boost |
| Energy | Laser Pistol (IV) → Laser Rifle (V); Laser Pistol → Plasma Caster (V) | Laser Comp+Wire+Steel · Laser Comp+Electronics+Steel · Plasma Cells+Laser Comp+Hardened | Electronics Lab / Laboratory | lasers: hunters no, droids boost · plasma: hunters no, militia boost, survivors/ashen/droids tbd |
| Explosives & Fire | Molotov (I) → Pipe Bomb (II) → Dynamite (III) → Flamethrower (IV) | Alcohol+Cloth · Scrap+Gunpowder · Gunpowder+Paper · Steel+Fuel+Mech Parts | Munitions Workshop | Molotov: ashen boost, droids no · Dynamite: hunters & ashen boost (blasting for mines/quarries) · Flamethrower: ashen boost |

### Armour (goods)

| Lane | Item (tier) | Inputs | Access overrides |
|---|---|---|---|
| Light | Padded Cloth (I) → Leather Armour (II) → Brigandine (III) → Ranger Duster (IV) | Cloth · Leather · Leather+Cloth+Iron · Leather+Cloth+Steel | droids: no all · Leather Armour & Ranger Duster: hunters boost |
| Heavy | Scrap Plating (I) → Bronze Scale (II) → Iron Plate (III) → Steel Plate (IV) → Hardened Plate (V) | Scrap · Bronze+Scrap · Iron+Nails · Steel+Nails · Hardened+Steel | Steel & Hardened Plate: militia boost. Droids can craft to sell; chassis wear Droid Plating. |
| Hazard & Tech | Droid Plating (II) · Fireproof Coat (III) → Hazmat Suit (IV) → Powered Exo-Frame (V) | Scrap+Mech Parts · Leather+Cloth · Cloth+Glass+Charcoal · Electronics+Steel+Mech Parts | Droid Plating: default no, droids boost · Fireproof: ashen boost, droids no · Hazmat: droids no (work through radiation bursts) · Exo-Frame: hunters no, militia boost, survivors/ashen tbd, droids no |

### Equipment & kit

| Code | Name | Inputs | Made at | Access overrides | Description |
|---|---|---|---|---|---|
| GM | **Gas Mask** | Cloth, Charcoal, Glass | Workshop | droids: no | Work through sandstorms, smoke, toxic zones. |
| WF | **Water Filter** | Charcoal, Cloth, Scrap | Workshop | droids: tbd | Cleans dirty or irradiated water (suggestion). |
| Bn | **Bandages** | Cloth, Herbs | Apothecary | ashen: weak, droids: no | Basic treatment for injured workers. |
| MK | **Med Kit** | Medicine, Cloth | Apothecary | ashen: weak, droids: no | Treats injuries, disease, radiation sickness. |
| Rp | **Rope & Pulley** | Cloth, Wood | Workshop | droids: import | Construction and hauling. |
| Ln | **Lantern** | Glass, Alcohol | Workshop | droids: no | Night work (suggestion). |
| TK | **Trap Kit** | Wire, Wood | Hunting Lodge | hunters: boost, droids: no | Snares — Twig's speciality. |
| Sd | **Saddle & Tack** | Leather | Tannery | hunters: boost, droids: no | Horses for haulers and traders (suggestion). |
| Am | **Ammunition** | Gunpowder, Copper, Scrap | Munitions Workshop | hunters: boost | Cartridges — steady trade good. *(new)* |
| VP | **Vehicle Parts** | Mech Parts, Steel, Fuel | Workshop | militia: boost | Carts, trucks, haulers (suggestion). |
| RK | **Repair Kit** | Mech Parts, Electronics | Workshop | droids: boost, hunters: weak | Repairs machines, generators, droid chassis. |
| CC | **Charge Cell** | Power, Copper, Electronics | Electronics Lab | droids: boost, hunters: weak | Stored power for blackouts and sandstorms (suggestion). *(new)* |
| Rd | **Radio Set** | Electronics, Wire | Electronics Lab | hunters: weak | Broadcast Centre settler recruitment. |

---

## Team notes (shown in the page when that team is selected)

- **Survivors** — neutral. About 80% of every branch: good at everything, best at nothing. No boosts or blocks; special alloys and plasma undecided.
- **The Hunters** — land and labour. ★ food, animal products, wood and stone; ★ guns, bows and leather gear. ▼ weak electronics and power. ✕ never laser or plasma.
- **Militia** — industry. ★ steel, concrete, mechanical parts, power and electronics; ★ heavy guns, plate and plasma. ▼ weak farming, foraging and the land.
- **Ashen** — fire and the dark economy. ★ charcoal, coal, iron, glass, fuel and gems (rubies); ★ incendiaries, blasting and fireproof gear. Only team with Human Meat (Ash Rites). ▼ weak medicine and health.
- **Droids** — no food at all: the whole Produce tab is closed, including cloth and leather. Power is their food. ★ power, electronics, components and salvage. Water use undecided.

---

## Open questions

1. **Special alloys** — which teams smelt / enhance Hardened, Stainless and Titanium (all `tbd`).
2. **Plasma** for Survivors, Ashen and Droids — currently `tbd`; Militia ★, Hunters ✕.
3. **Droid water** — coolant, or none at all (Visions open point 7)? Currently `tbd` on Water and Water Filter.
4. **Droids and produce goods** — strict reading used: no cloth, leather or alcohol either. Should Droids be ⇄ import-only for some (e.g. Rope ⇄ already)?
5. **Coal era vs mining ladder** — Visions lists coal as Mid but the ladder puts it after iron.
6. **Iron era** — Visions lists Iron as Late, yet it is only the third material tier.
7. **Power as Early** — Power sits in Early so Droids can charge from day one; other teams may only need it from Mid.
8. **Wild Taming** — keep as a Hunters-only pasture, or drop?
9. **Sand**, **gunpowder nitrates**, **grain / veg / pigs & kitchen recipes**, **food quality tiers** — suggestions still to confirm.
10. **Shields** from the old Arms book were not carried over (not useful as colony goods) — add back if wanted.
