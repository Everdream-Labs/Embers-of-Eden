# Resources of Eden
**Source of truth for `Resources of Eden.html`**
**Last updated:** 1 November 2026

This file holds the full detail. The HTML is the readable, filterable version. Edit here, then sync batches into the HTML `DEFAULT_DATA` (ask the assistant to "sync Resources of Eden from the md"). Quick tweaks made in the page with **Edit → Save into HTML** should be copied back here at the next sync.

---

## How access works

| Mark | State | Meaning |
|---|---|---|
| ✓ | yes | Can produce it (default for every node unless overridden) |
| ★ | boost | Stronger / faster than baseline |
| ⇄ | import | **Import only** — can use stock that is bought or traded in, but cannot produce it |
| ? | tbd | Undecided |
| ✕ | no | No access |

- **Mixed pairs use the union rule:** the pair gets the best access either Warlord's Duo has. Tweak per item later.
- **Buildings are different:** if a pair cannot construct a building (Warlords of Eden), it stays locked even when the resources exist.
- **Crafting with imports is allowed:** a blacksmith can forge imported Hardened Steel ingots into better gear even if that colony's smelter only makes regular steel.
- **Filter:** pick Warlord I and Warlord II at the top of the page. The choice carries across Arms and Resources.

---

## Resources tab

Natural resources and every refining step above them — ore to ingot to alloy. Follow the lines downward: each node is made from the nodes feeding into it.

**Bands (top → bottom):** Early — Gathered · Early — Processed · Mid — Gathered · Mid — Refined · Mid — Components · Late — Gathered · Late — Refined · Late — Advanced & alloys
**Lanes (left → right):** Timber · Stone · Clay · Sand & Glass · Tin · Copper · Coal & Iron · Alloys · Alloys · Scrap · Components · Chemistry · Precious · Gems

| Code | Name | Band | Lane | Made from | Cross-tab inputs | Made / gathered at | Gate | Access overrides | Description / notes |
|---|---|---|---|---|---|---|---|---|---|
| Wd | **Wood** | Early Gathered | Timber | — | — | Lumber Camp | Any axe — a Stone Axe works scrub and deadfall; softwood forests need an Iron Axe | hunters: boost | Core building material and early fuel. — Hunters boost comes from Twig (wood & lumber). |
| St | **Stone** | Early Gathered | Stone | — | — | Quarry | Stone Pick | hunters: boost | Foundations, walls and early tools. First rung of the mining ladder. — Hunters boost comes from Brick (stone & mining). |
| Cl | **Clay** | Early Gathered | Clay | — | — | Clay Pit (suggestion) | — | all: yes | Riverbank clay for bricks, pottery and kilns. |
| Sd | **Sand** | Early Gathered | Sand & Glass | — | — | Sand Pit (suggestion) | — | all: yes | Not on the Visions list yet — added so Glass has an input (suggestion). |
| Sc | **Scrap** | Early Gathered | Scrap | — | — | Scrapyard / dismantling | — | survivors: boost | Generic wasteland material for construction and crafting — harvested from ruins and old buildings, or by dismantling. — Survivors boost reflects their scavenge lean (suggestion). |
| Sa | **Salt** | Early Gathered | Chemistry | — | — | Salt Pan (suggestion) | — | all: yes | Preserves food and cures leather. Also: Smoked / Preserved Food, Cheese (Produce) |
| Ag | **Silver** | Early Gathered | Precious | — | — | Mine | — | all: yes | Primary trade currency; its price slowly rises over the match. Also needed for many upgrades and luxury items. |
| Ch | **Charcoal** | Early Processed | Timber | Wood | — | Charcoal Kiln (suggestion) | — | all: yes | Slow-burned wood. Early fuel for kilns, glass, gunpowder and smelting before coal arrives. |
| Sn | **Tin** | Mid Gathered | Tin | — | — | Mine | Mining I (tech) + Bronze Pick | pack: no | First metal on the mining ladder. Alloyed with copper to make bronze. |
| Cu | **Copper** | Mid Gathered | Copper | — | — | Mine | Mining II (tech) + Bronze Pick | pack: no | Bronze, wire and electrics. |
| Co | **Coal** | Mid Gathered | Coal & Iron | — | — | Mine | Mining IV on the tech ladder (see notes) | pack: tbd | High-heat fuel for iron, steel, bricks and concrete. — Visions lists coal as Mid but puts it after iron on the mining ladder (stone → tin → copper → iron → coal → gold). Era vs ladder still to reconcile. |
| Su | **Sulphur** | Mid Gathered | Chemistry | — | — | Mine / vents | — | all: yes | The key gunpowder input. |
| Au | **Gold** | Mid Gathered | Precious | — | — | Mine | Mining V — the last rung | all: yes | Unlocks mid-game. Currency, upgrades and luxuries; price slowly rises. |
| Pp | **Paper** | Mid Refined | Timber | Wood | Water (produce) | Paper Mill (suggestion) | — | all: yes | Research notes, blueprints and records for University-style research. Also wraps dynamite (suggestion). |
| Br | **Bricks** | Mid Refined | Clay | Clay, Charcoal | — | Brick Kiln | — | all: yes | Fired building material for sturdier, upgraded structures. |
| Gl | **Glass** | Mid Refined | Sand & Glass | Sand, Charcoal | — | Glassworks (suggestion) | — | pack: no | Windows, lenses, scopes, lab equipment and electronics. |
| Bz | **Bronze** | Mid Refined | Tin | Tin, Copper | — | Smelter | — | pack: no | Second material tier: Stone → Bronze → Iron → Steel → Hardened Steel. — The Pack skips bronze — stone to iron only, no alloy refinement. |
| Wr | **Wire** | Mid Refined | Copper | Copper | — | Wireworks (suggestion) | — | pack: no, scientists: boost | Electrics, traps, fences, electronics and arc weapons. |
| Nl | **Nails** | Mid Refined | Scrap | Scrap | — | Blacksmith | — | all: yes | Construction fasteners — needed by many building upgrades. |
| RC | **Rare Components** | Mid Refined | Components | Scrap | — | Scrapyard (salvage) | — | scientists: boost, pack: no | Old-world parts — circuitry, bearings, optics. |
| MP | **Mechanical Parts** | Mid Components | Scrap | Scrap, Nails, Bronze | — | Workshop (suggestion) | — | pack: no, nomads: boost | Gears, springs and fittings for guns, machines and vehicles. |
| Gp | **Gunpowder** | Mid Components | Chemistry | Sulphur, Charcoal | Fertiliser (produce) | Munitions Workshop | — | pack: tbd | Ammunition and explosives. Fertiliser stands in for nitrates (suggestion). — The Pack never uses guns; explosives are still undecided for them. |
| Fe | **Iron** | Late Gathered | Coal & Iron | Coal | Iron Pick (tools) | Mine → Smelter | Mining III (tech) + Iron Pick | all: yes | Third material tier. The Pack's ceiling — stone to iron, nothing refined beyond it. |
| Hw | **Hardwood** | Late Gathered | Timber | Wood | Steel Axe (tools) | Lumber Camp (upgraded) | Steel Axe — Visions: steel axe = hardwood | pack: no | Dense late-game timber for premium buildings, longbows and fittings (suggestion). |
| RS | **Rare Scrap** | Late Gathered | Scrap | Scrap | — | Sorting Yard (Scrapyard upgrade) | — | survivors: boost | Valuable salvage sorted out of normal scrap mid / late game. |
| Gm | **Gems** | Late Gathered | Gems | — | Steel Pick (tools) | Deep Mine | Steel Pick | pack: no | Rare stones for jewellery and luxury trade. |
| Cn | **Concrete** | Late Refined | Stone | Stone, Coal | Water (produce) | Cement Works (suggestion) | — | pack: no | Late construction material for fortifications and advanced buildings. |
| Sl | **Steel** | Late Refined | Coal & Iron | Iron, Coal | — | Smelter (Blast Furnace) | — | pack: no, militia: boost | Fourth material tier. Every smelter can make regular steel. Also: steel weapons, plate armour and steel tools (Arms of Eden) |
| Fu | **Fuel** | Late Refined | Chemistry | Coal | Alcohol (produce) | Refinery (suggestion) | — | nomads: boost, ashen: boost, pack: no | Vehicles, generators and flamethrowers. |
| GI | **Gold Ingots** | Late Refined | Precious | Gold, Coal | — | Smelter / Mint | — | all: yes | Refined gold for upgrades, trade and jewellery. |
| HS | **Hardened Steel** | Late Advanced & alloys | Coal & Iron | Steel, Rare Components | — | Alloy Foundry (suggestion) | — | default: import, scientists: yes, militia: yes, pack: no | Special Alloy and the fifth material tier. Civ-limited: only some smelters can make it. Everyone else imports the ingots — and their blacksmith can still forge them into better gear. |
| SS | **Stainless Steel** | Late Advanced & alloys | Alloys | Steel, Rare Scrap | — | Alloy Foundry (suggestion) | — | default: import, scientists: yes, pack: no | Special Alloy — corrosion-proof gear, medical and lab equipment (suggestion). |
| Ti | **Titanium** | Late Advanced & alloys | Alloys | Rare Scrap, Fuel | — | Alloy Foundry (suggestion) | — | default: import, scientists: yes, droids: yes, pack: no | Special Alloy — light, very strong frames and plating (suggestion). |
| El | **Electronics** | Late Advanced & alloys | Components | Rare Components, Wire, Glass | — | Electronics Lab (suggestion) | — | scientists: boost, droids: boost, hunters: import, pack: no | Lasers, radios, droid parts and powered gear. — Hunters import only: they distrust anything that hums (suggestion). |
| PG | **Pure Gold Ingots** | Late Advanced & alloys | Precious | Gold Ingots | — | Mint (suggestion) | — | all: yes | Top-grade gold — late age checklists and wonders (suggestion). |
| Jw | **Jewellery** | Late Advanced & alloys | Gems | Gems, Gold Ingots, Silver | — | Jeweller (suggestion) | — | all: yes | Luxury good — trade, happiness and age checklists (suggestion). |

---

## Produce tab

Farms, pastures, foraging and fishing — and the kitchen chains that turn them into food. **Droids ignore this whole tab** (every node has `droids: no`).

**Bands (top → bottom):** Wild — Forage, fish, water · Farms — Crops & pastures · Raw — Raw goods · Processed — Workshops · Kitchen — Meals · Late — Bonus foods
**Lanes (left → right):** Water · Fish · Berries · Herbs · Wild Game · Grain · Vegetables · Cotton · Cattle · Poultry · Pigs & Goats · Wild Beasts · Dark Larder

| Code | Name | Band | Lane | Made from | Cross-tab inputs | Made / gathered at | Gate | Access overrides | Description / notes |
|---|---|---|---|---|---|---|---|---|---|
| Wa | **Water** | Wild | Water | — | — | Well / river | — | droids: no | Upkeep for every unit alongside food. Wells near the colony; rivers and lakes elsewhere. |
| Fi | **Fish** | Wild | Fish | — | Hook & Line (tools) | Fishing Hut / dock | Fishing gear (Tools) | droids: no | From fishable water. Edible raw; better smoked. |
| Be | **Berries** | Wild | Berries | — | — | Forager → Orchard (late) | — | droids: no | Early forage. Orchards make it self-sustaining late game. |
| He | **Herbs** | Wild | Herbs | — | — | Herb Garden (suggestion) | — | droids: no | Medicine, bandages and poultices — and poisons in the right hands. |
| Gm | **Wild Game** | Wild | Wild Game | — | — | Hunting Lodge | — | droids: no, hunters: boost, pack: boost | Hunting wild animals for meat and hides (suggestion). |
| Gr | **Grain** | Farms | Grain | — | — | Farm | — | droids: no | Staple crop for flour, bread and alcohol (suggestion). |
| Vg | **Vegetables** | Farms | Vegetables | — | — | Farm | — | droids: no | Stews and kitchen meals (suggestion). |
| Ct | **Cotton** | Farms | Cotton | — | — | Farm | — | droids: no | Cotton → Cloth (Visions). |
| Ca | **Cattle** | Farms | Cattle | — | — | Pasture | — | droids: no | Milk, meat, leather and manure. |
| Ck | **Chickens** | Farms | Poultry | — | — | Pasture / coop | — | droids: no | Eggs and meat. |
| Pg | **Pigs & Goats** | Farms | Pigs & Goats | — | — | Pasture | — | droids: no | Meat, goat milk and manure (suggestion). |
| Wb | **Wild Breeding** | Farms | Wild Beasts | — | — | Beast Den (Pack) | — | default: no, pack: boost | The Pack can breed any animal, including wild map animals. Other civs only get farm animals. |
| Mk | **Milk** | Raw | Cattle | Cattle, Pigs & Goats | — | — | — | droids: no | Edible raw; becomes cheese in the kitchen. |
| Eg | **Eggs** | Raw | Poultry | Chickens | — | — | — | droids: no | Edible raw or cooked. |
| Mt | **Meat** | Raw | Pigs & Goats | Cattle, Pigs & Goats, Chickens, Wild Game, Wild Breeding | — | Butcher (suggestion) | — | droids: no | Edible raw; far better cooked, smoked or stewed. |
| Lt | **Leather** | Raw | Wild Beasts | Cattle, Wild Game, Wild Breeding | — | Tannery (suggestion) | — | droids: no | Pasture by-product (e.g. cows). Distinct from Cloth — the two combine in armour and gear. |
| Hm | **Human Meat** | Raw | Dark Larder | — | — | Slain enemies / POWs | — | default: no, pack: yes | The Pack can use human meat. For anyone else it would be low-quality food with negative effects (food-quality tiers under consideration). |
| Fl | **Flour** | Processed | Grain | Grain | — | Mill (suggestion) | — | droids: no | Ground grain for bread. |
| Al | **Alcohol** | Processed | Berries | Berries, Grain | — | Distillery (suggestion) | — | droids: no | Trade good, medicine input, fuel and molotovs. |
| Md | **Medicine** | Processed | Herbs | Herbs, Alcohol | — | Apothecary (suggestion) | — | droids: no, scientists: boost | Healing and cleansing; supplies healer units. |
| Fz | **Fertiliser** | Processed | Vegetables | Cattle, Pigs & Goats, Chickens | — | Manure Pit (suggestion) | — | droids: no | Boosts farm yield. Also stands in for nitrates in gunpowder (suggestion). |
| Cf | **Cloth** | Processed | Cotton | Cotton | — | Weaver | — | droids: no | Clothing, padded armour, bandages and sails. Combines with Leather. |
| Bd | **Bread** | Kitchen | Grain | Flour, Water | — | Kitchen | — | droids: no | Staple meal (suggestion). |
| Sw | **Hearty Stew** | Kitchen | Cattle | Meat, Vegetables, Water | — | Kitchen | — | droids: no | Combining ingredients gives a higher yield than eating them raw (suggestion). |
| Cs | **Cheese** | Kitchen | Poultry | Milk | Salt (resources) | Creamery (suggestion) | — | droids: no | Long-keeping dairy (suggestion). |
| Sm | **Smoked / Preserved Food** | Kitchen | Pigs & Goats | Meat, Fish | Salt, Charcoal (resources) | Smokehouse | — | droids: no, hunters: boost | Long-lasting food for trade and army upkeep. The Hunters excel at export. |
| Fs | **Feast** | Late | Cattle | Bread, Hearty Stew, Cheese, Alcohol | — | Kitchen (late) | — | droids: no | Late foods can give minor bonuses (Visions). Exact bonuses TBD. |
| Rt | **Field Rations** | Late | Pigs & Goats | Smoked / Preserved Food, Bread | — | Kitchen | — | droids: no | Packed food for armies on the march — eases military upkeep (suggestion). |

---

## Tools & Equipment tab

Tool tiers gate gathering (iron axe = softwood, steel axe = hardwood). Equipment grows over time as new kit is needed.

**Bands (top → bottom):** Tier I — Stone / scrap · Tier II — Bronze · Tier III — Iron · Tier IV — Steel · Tier V — Hardened steel
**Lanes (left → right):** Axes · Picks · Farm Tools · Building Tools · Fishing Gear · Butchery
**Rule:** every tool upgrades from the tool above it in the same lane. The Pack has no Bronze, Steel or Hardened tools.

| Tier | Axes | Picks | Farm Tools | Building Tools | Fishing Gear | Butchery |
|---|---|---|---|---|---|---|
| I · Stone | Stone Axe — scrub & deadfall (suggestion) | Stone Pick — stone, clay, salt | Stone Hoe — basic plots | Stone Mallet — basic construction | Hook & Line — shore fishing | Flint Knife — basic meat & hides |
| II · Bronze | Bronze Axe — faster felling | Bronze Pick — tin & copper (Mining I–II) | Bronze Sickle — faster harvest | Bronze Saw — faster building | Fishing Net — more fish per trip | Bronze Knife — cleaner cuts |
| III · Iron | Iron Axe — **softwood (Visions)** | Iron Pick — iron & coal (Mining III–IV) | Iron Scythe — large fields | Iron Toolset — the generic **“Tools”** good for building upgrades | Iron Harpoon — big fish, deep water | Iron Cleaver — more meat & leather |
| IV · Steel | Steel Axe — **hardwood (Visions)** | Steel Pick — gold & gems (Mining V) | Steel Plough — highest farm yield | Steel Toolset — advanced upgrades | Trawler Kit — boats, deep water | Steel Skinning Kit — best leather yield |
| V · Hardened | Hardened Axe — fastest felling | Hardened Pick — deep veins / late mine extensions | — | Hardened Toolset — wonders & fortifications | — | — |

Inputs follow the tier material (stone / bronze / iron / steel / hardened steel) plus wood; fishing gear uses cloth. Made at the Workbench (tier I, suggestion), Blacksmith (II–V), Weaver (net) and Dock (trawler kit).

### Equipment

| Code | Name | Inputs | Made at | Access overrides | Description |
|---|---|---|---|---|---|
| GM | **Gas Mask** | Cloth, Charcoal, Glass | Workshop | afflicted: boost | Filters toxic air — hazard zones and poison clouds. |
| WF | **Water Filter** | Charcoal, Cloth, Scrap | Workshop | all: yes | Cleans bad water sources (suggestion). |
| Bn | **Bandages** | Cloth, Herbs | Apothecary | all: yes | Field healing; stops bleeding (suggestion). |
| MK | **Med Kit** | Medicine, Cloth | Apothecary | scientists: boost | Healer supply; cleanses some status effects. |
| Rp | **Rope & Pulley** | Cloth, Wood | Workshop | all: yes | Construction, hauling and cliffs (suggestion). |
| Ln | **Lantern** | Glass, Alcohol | Workshop | pack: no | Night work and vision (suggestion). |
| TK | **Trap Kit** | Wire, Wood | Hunting Lodge | hunters: boost, pack: no | Snares for hunting and defence — Twig's speciality. |
| Sd | **Saddle & Tack** | Leather | Tannery | nomads: boost, droids: no | Mounts and beasts of burden (suggestion). |
| VP | **Vehicle Parts** | Mechanical Parts, Steel, Fuel | Caravan Yard / Workshop | default: tbd, nomads: boost, pack: no | Builds and repairs vehicles. |
| RK | **Repair Kit** | Mechanical Parts, Electronics | Workshop | droids: boost, pack: no | Repairs machines and droid chassis. |
| Rd | **Radio Set** | Electronics, Wire | Electronics Lab | hunters: import, pack: no | Ties into the Radio / TV Broadcast Centre for settler recruitment. |

---

## Duo notes (shown in the page when that Duo is filtered)

- **Mutants** — poor tool and weapon use: gathering penalty (TBD).
- **Droids** — no food economy; they ignore food entirely but pay more materials.
- **The Pack** — stone → iron only. No bronze, steel or alloy refinement (could become Import only — TBD).
- **The Hunters** — stone + wood specialists; distrust high-tech electronics (suggestion).

---

## Open questions

1. **Coal era vs mining ladder** — Visions lists coal as Mid but the ladder puts it after iron (stone → tin → copper → iron → coal → gold).
2. **Iron era** — Visions lists Iron as Late, yet Iron is the third material tier and the Pack's ceiling. Should iron move to Mid?
3. **The Pack and refined metals** — fully blocked (current) or Import only (could trade for bronze/steel but not refine)?
4. **Which Duos produce each Special Alloy** — Visions says "Scientists, Militia, etc." Current draft: Hardened Steel = Scientists + Militia; Stainless = Scientists; Titanium = Scientists + Droids.
5. **Sand** — not in the Visions list; added as a suggestion so Glass has an input.
6. **Gunpowder nitrates** — Fertiliser is standing in for saltpetre (suggestion).
7. **Grain, vegetables, pigs/goats, kitchen recipes** — suggestions to give the food chains shape; confirm or replace.
8. **Food quality tiers** (2–3) and late-food bonuses — still open in Visions.
9. **Droid workers and tools** — do chassis use tools at all, or have built-in tools?
