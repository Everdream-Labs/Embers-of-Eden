# Embers of Eden — Scope Questionnaire (RTS era — archived)

> **Archived 3 November 2026.** This questionnaire was written for the RTS version of the game. Embers of Eden is now a city-builder; the decisions that replaced it live in `design/Pages of Eden/Data/Visions_of_Eden.md`. Kept for reference only — do not answer it.
**Purpose:** close every remaining gap so the game has a full scope.
**Compiled:** 1 November 2026, after the Visions / Warlords / Arms / Resources pass.
**How to use:** answer under each question (Brett + Axel). Delete the suggestion once decided, or write "Yes, as suggested". Answers flow into `design/Pages of Eden/Data/*.md`, then into the HTML books.

**Companion:** names, faces, faction fantasy and how each Warlord reads as a person are in `Warlord Character Questionnaire.md` (same folder). Do not answer them here.

**Priority tags**
- **P1** — needed before the first playable prototype
- **P2** — needed before a vertical slice (one map, two Duos, full loop)
- **P3** — can wait until content production

---

## 1. Vision, pillars & audience

**1.1 — Design pillars** `P1`
Which 3–4 pillars decide every argument? (e.g. "Colony first, army second", "Every Duo plays differently", "Brutal choices are tools, not lectures", "Long games, earned endings".)
> Suggestion: *Grow it · Specialise it · Defend it · End it.* Use them as tie-breakers in reviews.

Answer:

**1.2 — Target player** `P1`
AoE veterans, colony-sim players (Endzone, Banished), or both? This sets tutorial depth and default speed.
> Suggestion: AoE2/AoE4 players who want deeper economy — with the Survivors as the on-ramp for colony-sim fans.

Answer:

**1.3 — Session length reality check** `P1`
Full maps target 5–10 hours. What is the *default* lobby length, and is there a "standard" 60–90 minute mode?
> Suggestion: three presets — Skirmish (45–75 min, small map), Standard (2–3 h), Epic (5–10 h, huge map, save/resume required).

Answer:

**1.4 — Rating & tone limits** `P2`
Slavery, cannibalism, human meat, psychosis conversion: what is shown on screen vs implied? Any hard lines?
> Suggestion: mechanics stay; visuals stay implied (icons, silhouettes, text). Aim for an M / PEGI 16 rating, not 18.

Answer:

---

## 2. Platform, scope & business

**2.1 — Platforms** `P1`
PC only (Steam) first? Mac/Linux? Steam Deck verification?
> Suggestion: Windows first, Steam Deck "Playable" as a stretch; Mac later (Axel is on a Mac — test builds early).

Answer:

**2.2 — Business model** `P2`
Premium one-off price? Early Access? Paid Duo packs later?
> Suggestion: Early Access with 4–6 Duos, the rest released free during EA; paid expansions only after 1.0.

Answer:

**2.3 — Launch scope** `P1`
How many Duos, maps and modes at Early Access vs 1.0?
> Suggestion: EA = Survivors, Hunters, Scientists, Mutants, Ashen, Droids + Solo and Skirmish vs AI. 1.0 = all 12 + Multiplayer + Duos mode.

Answer:

**2.4 — Team & roles** `P1`
Who owns what? (Design, code, art, audio, map design, community.) What gets outsourced?
> Suggestion: Brett = design lead + codex owner; Axel = systems/code lead; outsource portraits and the music theme first.

Answer:

**2.5 — Milestones** `P1`
Dates or targets for: prototype, vertical slice, closed test, Early Access.

Answer:

---

## 3. Game modes & match flow

**3.1 — Match start** `P1`
What does a colony start with? (Town Centre, X citizens, both Warlords, starting stockpile.)
> Suggestion: Town Centre + 6 citizens + both Warlords + 200 food / 200 water / 150 wood / 100 stone / 50 scrap.

Answer:

**3.2 — Solo controls** `P1`
In Solo you control both Warlords. Can they be split across the map freely? Any penalty for being far apart?
> Suggestion: free to split; a small "Together" aura (Bond passives only work within range) rewards keeping them close.

Answer:

**3.3 — Duos mode details** `P2`
Two players, one colony, each locked to one Warlord. Shared stockpile? Who can build what? Can one player queue the other's signature unit?
> Suggestion: shared stockpile and population; each player can only train their own Warlord's signature; buildings are shared.

Answer:

**3.4 — Regicide edge cases** `P1`
If one Warlord dies, does the colony fight on with the other? Can a dead Warlord be revived, and how?
> Suggestion: the colony survives until **both** Warlords fall. A fallen Warlord can be "recovered" from their body within 2 minutes by a healer, or rebuilt at a late-game shrine once per match.

Answer:

**3.5 — Droid elimination** `P1`
The Data Centre replaces the Town Centre. Is Droid 0001 also killable? What happens to Droids if Droid 0001 dies but the Data Centre stands?
> Suggestion: Droid 0001 re-uploads at the Data Centre after a timer; only the Data Centre(s) matter for elimination.

Answer:

**3.6 — Speed and pause rules in multiplayer** `P2`
Pause / ×2 / ×3 / ×4 exist in Solo. In multiplayer: votes? Limited pauses per player?

Answer:

**3.7 — Save / resume** `P1`
5–10 hour games need saves. Solo save anywhere? Multiplayer save and resume with the same lobby?
> Suggestion: yes to both; multiplayer saves restore with AI filling empty seats.

Answer:

**3.8 — Disconnects** `P2`
Visions says: disconnect → colony goes rogue (defensive NPC) after 30 minutes. Can the player rejoin before then? Can an ally take control?

Answer:

---

## 4. Warlords & Duos — roster mechanics

Names, the Bloodveil faction name, Afflicted / Militia / Templar fantasy, Smash and Bash's silhouette, and the portrait style now live in `Warlord Character Questionnaire.md`. This section is the systems those people sit on.

**4.1 — Personal traits** `P1`
Each Warlord needs one Troop trait, one Technology trait and one Passive trait. None are locked. Who drafts them?
> Suggestion: draft all 23 Warlords in one session using the Warlords of Eden "Personal Traits" slots, then balance in pairs.

Answer:

**4.2 — Signature troops / buildings** `P1`
The codex now proposes a signature for every Warlord (e.g. Viktor → Wasteland Raider, Mixy → Field Infirmary). Keep, change or swap troop ↔ building?

Answer:

**4.3 — Duo unique buildings** `P2`
Each Duo also has a unique building (Barter Post, Hunting Lodge …). Keep both systems (Duo building + Warlord signature), or merge them?
> Suggestion: keep both — the Duo building is the economic identity, the signature is personal flavour.

Answer:

**4.4 — Open slot (Duo 13)** `P3`
What goes in the reserved slot?
> Suggestion ideas: *The Drowned* (coastal salvagers with boats), *The Choir* (radio-tower cult that broadcasts propaganda), *The Herd* (nomadic beast-riders).

Answer:

**4.5 — Droid chassis list** `P2`
Light and Heavy chassis exist. What else? (Scout, Siege, Worker, Medic-repair?)

Answer:

**4.6 — Nomad vehicles** `P2`
How many vehicle types, what do they cost (Fuel?), and can other Duos capture or use them?

Answer:

**4.7 — Pack animal roster** `P2`
Dogs, Vultures, Lions, Bears, Elephants, Hippos + any map animal. Which are bred vs tamed vs captured? Population cost per animal?

Answer:

**4.8 — Biome strengths per Duo** `P2`
Visions says each civ has biome pros/cons. List them.
> Suggestion: Bloodveil + swamp, Nomads + desert, Hunters + forest, Afflicted + toxic zones, Droids − swamp.

Answer:

---

## 5. Mixing, unlocks & long-term progression

**5.1 — Challenge unlock list** `P1`
The exact challenge for each Duo. (Visions example: win as Scientists to unlock Mutants.)
> Suggestion: tie each unlock to lore — Scientists → Mutants; Survivors win with 500 citizens → Nomads; enslave 1000 → Ashen; win without guns → Pack; etc.

Answer:

**5.2 — Union rule exceptions** `P1`
Mixed pairs currently get everything either side has. What should **not** carry over?
> Suggestion: exceptions = Bloodveil female-only rule, Pack animal breeding, Droid chassis, Nomad multiple Town Centres, Droid Data Centre. Signatures always come with their Warlord.

Answer:

**5.3 — Mixed pair downsides** `P2`
What does a mixed pair lose versus a natural Duo, beyond the specialised tree?
> Suggestion: no Duo unique building (choose one of the two at match start), and Bond passives start at zero.

Answer:

**5.4 — XP and levels** `P2`
Level caps for personal trees, Duo trees and Bond bars? How fast? What does a level-1 Warlord feel like vs max?
> Suggestion: personal 20 levels, Duo tree 30, Bond 5. Power gain is sidegrade-heavy — options, not raw stats — to keep multiplayer fair.

Answer:

**5.5 — Progression in multiplayer** `P1`
Do persistent levels apply in ranked multiplayer, or only in Solo / casual?
> Suggestion: ranked uses "tournament mode" (everything unlocked, all levels equal); progression shines in Solo and casual.

Answer:

**5.6 — Global troop line levels** `P2`
Troop lines level globally across Duos. Does that apply in multiplayer too?

Answer:

---

## 6. Population & citizens

**6.1 — Citizen roles** `P1`
Which jobs exist (gatherer, builder, farmer, smith, researcher, trader …)? Assigned per building or free-roaming?
> Suggestion: AoE-style free gatherers + Endzone-style assigned workers for production buildings.

Answer:

**6.2 — Growth formula** `P2`
"Each new settler costs more and takes longer." Exact curve? Housing cap? Food / water requirement per citizen?

Answer:

**6.3 — Radio / TV Broadcast Centre** `P2`
What exactly does it do? (Attract settlers, choose settler traits, propaganda?)

Answer:

**6.4 — Happiness** `P2`
Keep the simple production-bonus scale? What raises and lowers it?
> Suggestion: food variety, housing quality, entertainment buildings and alcohol raise it; slavery, starvation and cannibalism lower it (except for Duos that thrive on them).

Answer:

**6.5 — Slaves and POWs** `P1`
How are POWs taken? What can slaves do? Can they revolt? Which Duos can keep them?
> Suggestion: POWs from defeated units near your buildings; slaves work but never fight; low happiness risks revolt; Ashen get control bonuses.

Answer:

**6.6 — Starvation & forced measures** `P2`
What happens when food or water runs out? Which "forced measures" exist?

Answer:

---

## 7. Economy, resources & production

**7.1 — Era placement fixes** `P1`
Visions lists Coal as Mid and Iron as Late, but the mining ladder puts iron before coal, and Iron is the Pack's ceiling. Move Iron to Mid?
> Suggestion: Iron → Mid, Coal stays Mid, Steel → Late. Ladder: stone → tin → copper → iron → coal → gold.

Answer:

**7.2 — Confirm suggested resources** `P2`
Added as suggestions: Sand, Grain, Vegetables, Pigs & Goats, Flour, Bread, Stew, Cheese, Feast, Field Rations, Hardwood. Keep or cut?

Answer:

**7.3 — Special alloy owners** `P1`
Current draft: Hardened Steel = Scientists + Militia; Stainless = Scientists; Titanium = Scientists + Droids. Confirm?

Answer:

**7.4 — The Pack and refined metals** `P1`
Fully blocked from bronze/steel (current), or Import only?

Answer:

**7.5 — Currency** `P1`
A dedicated currency plus Silver and Gold. What is the currency called and how is it minted?
> Suggestion: "Ember" coins minted from silver at a Mint; gold is a reserve that sets the exchange rate.

Answer:

**7.6 — Global market** `P2`
Who runs it in the lore? How do prices move? Can players crash a price on purpose?
> Suggestion: an off-map caravan guild ("the Ash Exchange"); prices move with supply; dumping is allowed and is a valid economic attack.

Answer:

**7.7 — Food quality tiers** `P2`
2–3 quality tiers and late-food bonuses — define them.

Answer:

**7.8 — Storage & decay** `P2`
Global stockpile confirmed. Do food items spoil? Is there a storage cap per building?
> Suggestion: no spoilage at launch (complexity), but caps per storage building.

Answer:

**7.9 — Tool wear** `P3`
Do tools break and need replacing, or are tiers permanent upgrades?
> Suggestion: permanent per-colony upgrades (AoE style) — fewer chores.

Answer:

---

## 8. Buildings & settlement

**8.1 — Full building list** `P1`
The codex has 13 shared buildings. Production chains also need: Smelter, Blacksmith, Gunsmith, Bowyer, Armourer, Weaver, Tannery, Kitchen, Mill, Distillery, Apothecary, Glassworks, Brick Kiln, Charcoal Kiln, Refinery, Mint, Dock, Siege Workshop, Infirmary, University. Confirm the list and per-Duo access.

Answer:

**8.2 — Building gating per Duo** `P1`
Which buildings can each Duo *not* build? (The rule exists — the list doesn't.)

Answer:

**8.3 — Building upgrades** `P2`
How many upgrade levels per building, and what changes visually and functionally?
> Suggestion: three levels — Scrap, Built, Fortified — with Endzone-style visual upgrades.

Answer:

**8.4 — Foundations & placement** `P2`
Which buildings need foundations or specific terrain?

Answer:

**8.5 — Walls & defences** `P2`
Wall materials and tiers, gates, towers, traps, mines?

Answer:

**8.6 — Nomads moving the Town Centre** `P1`
How does relocation work? (Pack up → caravan → unpack? Time? Vulnerable while moving?)

Answer:

---

## 9. Tech, research & ages

**9.1 — Ages** `P1`
How many ages, their names and their checklists?
> Suggestion: four ages — *Scavenger*, *Settler*, *Industrial*, *Reclaimer* — each needing a resource checklist plus one Duo-specific requirement.

Answer:

**9.2 — Research structure** `P2`
One shared tree with Duo gates (current codex), or separate trees per Duo?

Answer:

**9.3 — Blueprints** `P2`
Visions mentions blueprints. Are they found on the map, researched, or both?
> Suggestion: both — research unlocks most; rare blueprints in ruins and relic sites unlock unique items.

Answer:

**9.4 — Research speed** `P2`
Workers in research buildings — how many, and how does that scale?

Answer:

---

## 10. Military — troops & combat

**10.1 — Unit stats model** `P1`
HP, attack, armour types (melee/ranged), speed, range, attack speed — confirm the stat list and armour formula.

Answer:

**10.2 — Equipment model** `P1`
Do troops consume a weapon item when trained, or does the barracks need the weapon *researched*? If crafted items: per-unit cost?
> Suggestion: crafted gear is a training cost (e.g. Rifleman = 1 Bolt Rifle + 1 Leather Armour + food/water upkeep). Better gear = better stats.

Answer:

**10.3 — Gear substitution** `P2`
If a team lacks a stage's typical weapon, can it substitute lower gear or does it lose the stage?

Answer:

**10.4 — Upkeep rates** `P2`
Food and water per unit per minute? What happens if upkeep can't be paid (desertion, damage, morale)?

Answer:

**10.5 — Formations & stances** `P2`
Which formations and stances at launch?

Answer:

**10.6 — Siege** `P2`
Which units siege best, and which Duos are bad at it?

Answer:

**10.7 — Naval** `P3`
Fishable water exists. Any boats or naval combat?
> Suggestion: no naval combat at launch; boats only for fishing and the Nomad/Drowned future content.

Answer:

**10.8 — Heroes besides Warlords** `P3`
Any other hero-like units (champions, captains)?

Answer:

---

## 11. Weapons, armour & status effects

**11.1 — Lock the status matrix** `P1`
Arms of Eden has a draft inflict matrix. Approve or edit it cell by cell.

Answer:

**11.2 — Disease** `P2`
Keep Disease as its own status (spreads between units), or fold it into Poison?

Answer:

**11.3 — Paralysis exclusivity** `P1`
Scientists only, or also Droids?

Answer:

**11.4 — Psychosis rules** `P1`
Duration, cooldown, unit limit, and what converted units can do (fight their own side? only flee?).
> Suggestion: 20 seconds of control, cannot target Warlords, max 3 converted at once per caster.

Answer:

**11.5 — Damage types vs armour** `P2`
Should laser/plasma ignore some armour? Fire vs wooden buildings?

Answer:

**11.6 — Ammo** `P3`
Do guns need ammunition stock, or is ammo abstracted into upkeep?
> Suggestion: abstracted (gunpowder upkeep per gun unit) — fewer chores.

Answer:

---

## 12. Map, world & biomes

**12.1 — Biome list** `P1`
**Proposed (Maps of Eden):** 12 terrain types, one home per Duo — Ash Plains, Dead Forest, Tech Ruins, Industrial Basin, Toxic Crater, Ruined City, Mire, Highlands, Badlands Savannah, Cinderlands, Dustline Desert, Dead Grid. Confirm, merge or cut?

Answer:

**12.1a — Home-turf strength** `P1`
Each Duo gets a small home bonus and at most one hostile penalty; each Warlord one terrain trait (±5–15%). Too strong, too weak, or right?

Answer:

**12.1b — Twelve maps** `P2`
Approve the twelve home-turf maps in Maps of Eden (names, layouts, resource profiles, hazards, tribes, relics)?

Answer:

**12.2 — Map generation** `P2`
Hand-made maps, random maps or both at launch? Map editor?
> Suggestion: random generation with seeds + 3 hand-crafted showcase maps; editor post-launch.

Answer:

**12.3 — Weather & day/night** `P3`
No seasons at launch. Day/night cycle? Sandstorms, acid rain, radiation storms?
> Suggestion: day/night visual only at launch; one weather event per biome later.

Answer:

**12.4 — Hazard zones** `P2`
How do radiation / toxic zones work, and who benefits (Afflicted)?

Answer:

**12.5 — Map-control victory** `P3`
How is territory % calculated?

Answer:

---

## 13. Neutrals, diplomacy, trade & relics

**13.1 — Neutral tribe types** `P2`
Which neutral tribe types exist, and how do Duos interact with each?

Answer:

**13.2 — Diplomacy** `P2`
Enemy / Neutral / Ally treaties — can treaties break? Tribute? Shared vision?

Answer:

**13.3 — Relics** `P2`
What do relics do and how are they held?
> Suggestion: relics give a colony-wide bonus while garrisoned in a specific building; Templars get double value; relic victory = hold X relics for Y minutes.

Answer:

**13.4 — Wild animals** `P2`
Hostile wildlife levels? Do predators attack colonies?

Answer:

---

## 14. Victory, scoring & match end

**14.1 — Victory modes at launch** `P1`
Regicide is default. Which alternate modes ship first?

Answer:

**14.2 — Score screen** `P3`
What stats are tracked and saved into the personal match library?

Answer:

**14.3 — Surrender & teams** `P2`
Team surrender votes? Ally defeat rules?

Answer:

---

## 15. UI / UX & controls

**15.1 — Camera** `P1`
Locked isometric — zoom levels? Rotation? Minimap style?

Answer:

**15.2 — HUD layout** `P1`
Resource bar (how many resources visible at once with 40+ types?), unit panel, build menu.
> Suggestion: show the 6 "core" resources always; others in an expandable ledger grouped like Resources of Eden.

Answer:

**15.3 — Production chain UI** `P2`
How do players see chains in-game? A Resources-of-Eden-style tree overlay?

Answer:

**15.4 — Hotkeys & controller** `P2`
AoE-style grid hotkeys? Controller / Steam Deck support?

Answer:

**15.5 — Tutorial & onboarding** `P2`
Survivors campaign-style tutorial? Tooltips? A codex in-game (like Pages of Eden)?
> Suggestion: a short Survivors tutorial + an in-game "Codex" that mirrors Pages of Eden.

Answer:

**15.6 — Accessibility** `P3`
Colour-blind modes (the Duo palettes rely on colour), UI scaling, subtitles.

Answer:

---

## 16. Art direction & visual identity

**16.1 — Art style** `P1`
2D isometric sprites or 3D rendered to sprites? Pixel art or painted?
> Suggestion: painted 2D isometric (or 3D rendered to sprites) — the portraits already set a grim painted tone.

Answer:

**16.2 — Visual briefs (troops, buildings, flags)** `P1`
Warlord names and portraits are decided in the Warlord Character Questionnaire, then turned into image prompts from Viktor and Ayla. This question is everything else: signature troops, buildings, logos and flags. Who writes those briefs?
> Suggestion: one brief template per subject (silhouette, palette from the codex, props, mood, 3 reference images). Shortlist with the Name1/Name2/Name3 picture system. Logos before flags, Survivors first.

Answer:

**16.3 — Flags, banners & logos — the set** `P2`
Locked: three banner types per Duo — **colony flag** (logo + Duo colour + both Warlord accents), **horizontal banner** (buildings, menus), **vertical sash** (buildings, unit standards, side menus) — plus a **logo**. Who designs them, and in what order?
> Suggestion: logos first (everything else builds on them), then colony flags, then banners. Start with Survivors, Scientists and Ashen as the style test.

Answer:

**16.3a — Flag shape & construction** `P2`
Rectangle, swallowtail, tattered cloth, stitched-together scrap? One shape for every Duo, or a shape per Duo?
> Suggestion: one shared construction language (stitched salvage cloth on a scrap pole) with Duo-specific details — Droids get a hard-light / LED panel version, Pack a stretched-hide version, Templars a heraldic cut.

Answer:

**16.3b — How the two accents sit on a flag** `P2`
Stripes, quartering, border trim, or the logo drawn in the accents?
> Suggestion: primary field + accent I top edge + accent II bottom edge, logo in bone white — the placeholder drafts in Warlords of Eden already follow this, so it reads at a glance.

Answer:

**16.3c — Mixed pairs' banners** `P2`
Mixed pairs adopt the two Warlord accents. What does their flag look like?
> Suggestion: split flag — left half is Warlord I's Duo field with their accent, right half Warlord II's — both logos small at the centre seam.

Answer:

**16.3d — Readability rules** `P2`
Logos must read at 24–32 px (minimap, unit icons, multiplayer lobby). Colour-blind safe?
> Suggestion: every logo gets a single-colour silhouette version; each Duo also gets a pattern (stripes, dots, chevrons) so colour is never the only signal.

Answer:

**16.3e — Where banners appear in game** `P3`
Buildings at each upgrade level, unit standards, menus, loading screens, victory screen, territory borders?
> Suggestion: horizontal banners on building tier 2+, vertical sashes on tier 3, colony flag on the Town Centre and territory border markers.

Answer:

**16.3f — Colour lock process** `P2`
Colours can now be tweaked live with the picker in Warlords of Eden (Edit mode). When are they locked, and who signs off?
> Suggestion: tweak freely until flags are commissioned, then lock in `Warlords_of_Eden.md` and treat changes as design decisions in the log.

Answer:

**16.4 — Colour palette approval** `P2`
Approve the Duo colours and Warlord accents documented in Warlords of Eden (e.g. Survivors gunmetal grey, Viktor steel blue, Ayla dusk violet).

Answer:

**16.5 — Building art progression** `P2`
How do buildings look across three upgrade levels and per Duo? Shared base models with Duo dressing?

Answer:

**16.6 — Unit readability** `P2`
How do players tell troops apart at RTS zoom? Team colours vs Duo palettes?
> Suggestion: a player-colour band (lobby colour) on every unit, with the Duo palette on armour and props — the two systems never compete.

Answer:

**16.7 — Sprite pipeline** `P2`
In-game sprites: how many facing directions (4 / 8), frames per animation, resolution, and tool (the repo already has Aseprite files)? Portrait → sprite consistency?
> Suggestion: 8 directions, 64–96 px units rendered from 3D or painted in Aseprite; every sprite sheet lives in `game/assets/` with its shortlist concept art in the codex `Images/` folders.

Answer:

---

## 17. Audio

**17.1 — Music direction** `P2`
Ambient wasteland, folk, industrial, orchestral? Per-Duo themes?
> Suggestion: a main theme with per-Duo instrumentation (Survivors acoustic, Scientists synth, Bloodveil choir, Droids glitch).

Answer:

**17.2 — Warlord voices** `P3`
Voice acting for Warlords? Unit barks? Language?

Answer:

**17.3 — UI sound set** `P3`
The codex has procedural placeholder sounds. Final UI sounds — commission or library?

Answer:

---

## 18. Narrative & lore

**18.1 — How the world ended** `P2`
What caused the apocalypse, and how long ago?

Answer:

**18.2 — Eden** `P1`
What is "Eden" in the lore? A place, a myth, a goal? Why "Embers"?
> Suggestion: Eden is a rumoured untouched valley every faction believes in — the embers are the last fires of civilisation. Relics hint at its location.

Answer:

**18.3 — Delivery** `P2`
Minimal cutscenes — so where does lore live? (Loading screens, codex entries, Warlord barks, relic texts.)

Answer:

**18.4 — Faction relationships** `P3`
Rivalries and alliances in lore (Scientists ↔ Mutants origin is locked). Others?

Answer:

---

## 19. Engineering & Godot

**19.1 — Godot version & language** `P1`
Godot 4.4 + GDScript, or C# for heavy simulation?
> Suggestion: GDScript for game code, with C# / GDExtension reserved for pathfinding and simulation hot spots once profiling proves the need.

Answer:

**19.2 — Data-driven design** `P1`
Should units, resources, buildings and tech load from data files that match the codex? (JSON or Godot Resources.)
> Suggestion: yes — export the codex data to JSON and load it in Godot so design and game never drift.

Answer:

**19.3 — Pathfinding at scale** `P1`
Hundreds of units on a 4× Giant map — flow fields? Hierarchical A*? Prototype early.

Answer:

**19.4 — Multiplayer architecture** `P2`
Deterministic lockstep (AoE style) or server-authoritative? Steam networking?

Answer:

**19.5 — Old prototype content** `P1`
The repo still has the fantasy-adventure prototype (player sprites, menus, World scene). Keep as a sandbox, archive or delete?
> Suggestion: archive the player-adventure scenes; keep menus and GameManager settings code as a starting point.

Answer:

**19.6 — Asset storage** `P2`
Large art (PSD, Aseprite, audio stems) in Git LFS?
> Suggestion: enable Git LFS before the art pipeline starts.

Answer:

---

## 20. AI opponents

**20.1 — AI personalities** `P2`
Does each Duo AI play to its identity? Difficulty levels?

Answer:

**20.2 — AI cheating** `P3`
Do harder AIs get resource bonuses?

Answer:

---

## 21. Production plan & team process

**21.1 — First prototype goal** `P1`
What is the smallest loop to prove the game is fun?
> Suggestion: tiny map, Survivors vs Survivors AI: gather 4 resources → build 6 buildings → train 2 troop lines → kill the enemy Warlords.

Answer:

**21.2 — Playtesting** `P2`
When and with whom? Feedback format?

Answer:

**21.3 — Decision log** `P1`
Keep a running decisions log (date, decision, who) in the repo?
> Suggestion: yes — `docs/decisions-log.md`, one line per decision.

Answer:

**21.4 — Branch workflow** `P1`
Both commit to `main`, or feature branches + pull requests?
> Suggestion: short-lived feature branches + PRs, even for two people — it keeps `main` always playable.

Answer:

---

## 22. Pages of Eden (codex) housekeeping

**22.1 — Source of truth** `P1`
Markdown in `design/Pages of Eden/Data/` is the source of truth; the HTML is the readable version. Agreed?

Answer:

**22.2 — Picture naming** `P1`
Rule: `Images/<Category>/<Exact Name>.jpg`, shortlist variants `Name1.jpg`, `Name2.jpg` … Click a picture in any book to cycle. Agreed?

Answer:

**22.3 — Sharing** `P1`
`node tools/build-share.mjs --desktop` builds a self-contained folder + zip for Axel. Good enough, or host the books online (GitHub Pages)?
> Suggestion: GitHub Pages later — then Axel just opens a link.

Answer:

**22.3a — Picture shortlist decisions** `P1`
Brett and Axel each cycle through `Name1 / Name2 / Name3` pictures. How do you agree on a winner — and what happens to the losers?
> Suggestion: the shown picture after **Save into HTML** is your vote (it travels with the file). When both agree, rename the winner to `Name.jpg` and move the rest into `Images/_Rejected/`.

Answer:

**22.3b — Colour edits flowing between books** `P2`
Colour picks made in Warlords of Eden update that book immediately; Arms and Resources update at the next sync. Is that OK, or should all four books share one live data file?
> Suggestion: fine for now. When the game loads codex data as JSON (19.2), make one shared `codex-data.json` the single source for all books.

Answer:

**22.3c — What Axel can edit** `P2`
Can Axel edit the shared copy and send it back? How do you merge two people's edits?
> Suggestion: Axel edits and sends his saved HTML back; you diff it via Export JSON. Longer term, both work from the GitHub repo.

Answer:

**22.4 — Next books** `P3`
Future books: *Maps of Eden* (biomes, map layouts), *Lore of Eden* (timeline, factions), *Sounds of Eden*?

Answer:
