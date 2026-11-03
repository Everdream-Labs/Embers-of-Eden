# Visions of Eden
**High-level living overview of Embers of Eden**  
**Last updated:** 3 November 2026 (night — second clarification pass with Brett)  
**Purpose:** Single document a fresh chat (or Cursor / collaborator) can read to understand the current broad vision. Update whenever major direction locks or changes.

**Status:** This is the **locked direction** for Embers of Eden. The codex (Pages of Eden HTML) and every other design file follows this document — not the other way around.

**Phase:** We are still **conceptualising everything** before deciding what to build first. No vertical slice or Early Access scope is chosen yet.

---

## Working Process — Note Folding

When Brett plays reference games (Endzone, Timberborn, Cities: Skylines, Tropico, etc.) or talks with Axel, he brings **notes** back as bullet points + short elaboration. We discuss and decide whether to weave, avoid, or park each idea. Challenge ideas for the meta tree are captured the same way as they come up during development.

---

## What the Game Is

**Embers of Eden** is a post-apocalyptic **city-builder / colony survival game**.

Players grow a specialised survivor colony, master deep multi-step resource chains, and keep the settlement alive through environmental crises. Combat exists only as a light, secondary placeholder (shelved until later). The game is **not** an Age of Empires-style RTS.

**Primary influences**
- **Endzone** — settlers, professions, survival clarity, scrappy upgraded buildings, refinement chains
- **Timberborn** — complexity, polish, drought/fertility pressure, idle/builder/hauler roles, two factions that play very differently (Folktails vs Iron Teeth)
- **Cities: Skylines** — water and power distribution, coverage overlays
- **Tropico** — leader at the centre (El Presidente-style), elections, unrest, policy building
- **Final Fantasy XIII** — Crystarium-style point spending on skill trees
- Age of Empires / Diablo — **graphical taste and isometric feel only**, not core loop

**Core loop**  
Build the colony → assign roles and professions → specialise production → prepare stockpiles for the next crisis → expand, trade, and upgrade → survive indefinitely.

There is no traditional "win". Like Timberborn, the goal is to build and endure (unless the colony fails — see **Failure States**).

---

## Core Fantasy & Tone

- Raw, methodical, and often brutal.
- Grit baseline 6–7, with peaks to 10.
- Tone is delivered through the **team you play**: their economy pros/cons, their slice of the master skill tree, their unique building, policies, and playstyle.
- Dark options exist as mechanical tools (Ashen-only slavery and cannibalism branches, harsh policies when starving), not constant moral lectures.
- Minimal cutscenes. Lore is drip-fed through gameplay, warlord identities, NPC encounters, and the world.

---

## Environmental Pressure (Primary Challenge)

Weather and world events are the main source of tension:

- **Droughts** — rivers dry; fertility drops unless dams, tanks, and stored water saved the season
- **Sandstorms**
- **Radiation storms / radiation bursts**
- Other crises that cut off or heavily pressure specific resources

**Warnings (locked):** every crisis is telegraphed by a warning, but the **lead time varies by event**:

| Event | Frequency | Warning |
|-------|-----------|---------|
| Drought | Common, seasonal | Long notice — time to fill tanks and stockpile |
| Sandstorm | Regular | Medium notice |
| Radiation burst | Rare | Very little notice — you survive on what you already prepared |

Players prepare stockpiles, diversify, and adapt. These replace the old large-scale combat pressure.

**Design note:** The moment a drought breaks and water flows back down the river toward the town is a targeted emotional beat — prepare for it in pacing and presentation.

---

## Playable Teams (Locked)

**Five playable teams.** During development **all five are selectable** for playtesting. In the shipped game the **first match is always Viktor & Ayla**; the other four unlock through challenges.

| # | Team | Warlords | Economic identity |
|---|------|----------|-------------------|
| 1 | **Survivors** | Viktor & Ayla | **Neutral.** ~80% of every branch of the master tree. Good at everything, best at nothing. Default start and tutorial team. |
| 2 | **The Hunters** | Brick & Twig | **Land and labour.** Western homesteaders (think NCR Rangers in Fallout: New Vegas). Best producers of food, animal products and raw resources. Make good guns, tools and crafted goods — but limited technology: no laser weapons, weak electronics and power. |
| 3 | **Militia** | Militia Brother & Sister (names TBD) | **Industry.** The inverse of the Hunters. Heavy industrial production, power, and advanced weaponry up to **plasma**. Weak at farming, foraging and the land. |
| 4 | **Ashen** | Blowtorch & Vesper | **Fire and the dark economy.** Pyro identity — mining, smelting and furnaces. **Exclusive** slavery and cannibalism branches. Weak at health and civic trust. |
| 5 | **Droids** | Droid 0001 | **The wildcard.** No food at all — that whole branch is replaced. **Power is their food:** every droid returns home to charge each night, so the grid must be far larger than anyone else's. Many other unique rules. |

### Rules (locked)

- Teams are **locked pairs** (Droids: one warlord). **No mixing** warlords across teams. The old **Bond system is removed**.
- Warlords stay at the **Town Centre** (Tropico / El Presidente-style). Champion/combat role only if combat returns later.
- Changing team changes **economy pros/cons**, the **slice of the master skill tree** you can take, and the **unique building**.
- **One unique building per team** — placeholder for now.
- **Data Centre** (old Droid RTS elimination rule) is **gone**. If a Data Centre exists later it will have a different, non-RTS function.

### The Wastes — Warlords of the Wastes (lore + NPC, not playable)

Personas and art are **kept** for world flavour and as occasional named NPC micro-colonies among generic wastelanders:

- **Scientists** (Dr. Something & Mixy)
- **Afflicted**
- **Mutants** (Smash & Bash) — demoted when Militia took the playable slot
- **The Pack** (cousins)

**Codex presentation (locked):** a list of these factions with their **flags**. Clicking a flag opens a modal with the warlord pictures, a description of their personality and what they stand for in the wasteland, and a **disposition bar per playable team**:

- 0% = hostile, 100% = best allies.
- **Trade opens at ~55%.**
- Each Wastes faction has a different starting disposition toward each playable team (e.g. one is friendly to Viktor & Ayla but hostile to the Hunters).
- Disposition moves with **policies** and with **team and player skill-tree unlocks**.
- No stat multipliers or skill trees for Wastes factions.

### Removed from the game entirely

- **Templars** — gone (not playable, not lore, not NPC).
- **Blood Ravens / Bloodveil** — gone. A future "two sisters dark cult" might exist as a scene or minimal story beat only.

### Shelved

- **Nomads** — cut as a team. The western flavour now lives in the Hunters; a movable-base mechanic may resurface elsewhere.

---

## Skill & Progression (Three Layers)

### 1. Master team skill tree (per match)

- One **large master tree** covering the whole economy.
- **Branches:** Food & Farming · Water & Irrigation · Timber & Stone · Mining & Metallurgy · Industry & Crafting · Power & Grid · Logistics & Construction · Health & Survival · Society & Rule · Trade & Relations.
- **Exclusive branches:** **Ash Rites** (Ashen only — slavery, cannibalism, fear) and **Charge & Hive** (Droids only — replaces Food & Farming).
- Every team reaches roughly **80% of the nodes**. Specialist teams are **spiky** — 100% in their best branches, as low as ~60% in their weakest. Survivors sit flat at ~80% everywhere.
- The old shared School/Lab tech table is retired — its ideas live in the master tree now.

| Team | 100% branches | Weakest branches |
|------|---------------|------------------|
| Survivors | — (≈80% everywhere) | — |
| Hunters | Food & Farming, Timber & Stone | Industry, Power (60%) |
| Militia | Industry & Crafting, Power & Grid | Food & Farming (60%) |
| Ashen | Mining & Metallurgy, Ash Rites | Health, Society, Trade (60%) |
| Droids | Power & Grid, Logistics, Charge & Hive | No Food branch; Water, Health, Society, Trade (60%) |

### 2. Player skill tree (meta — carries over between matches)

- The **largest tree** in the game — bigger than any team tree.
- Earns points by **playing** and completing **challenges** (challenge list grows during development).
- Small, permanent bonuses: "+2% wood chopping", "when playing Ashen, +5% rubies when mining".
- Has general branches plus a **mastery branch for each team**.

### Point spending (all trees)

Like **Final Fantasy XIII**: earn points, then dump them into a node whether or not that completes it. A big haul can fill several nodes at once.

**Codex tooling:** the Pages of Eden boards keep the **green fork / blue edit / red remove** tile tools for designing nodes.

### 3. Building upgrades (per match)

- Buildings upgrade on-site (Endzone-style scrappy tiers).
- An upgrade either **improves efficiency** or **unlocks a new set of recipes** (smelter → smelts more ores → alloys → furnace → steel).
- Three influences stack: **meta player tree** (all games) + **team tree** (this match) + **building tiers** (this match).

---

## Utilities — Water & Power

- **Water** is a resource consumed by the **population**, by **some buildings**, and used occasionally in **construction and upgrades** — the same as every other resource.
- **Water distribution:** Cities: Skylines-style network (pumps, towers, pipes) with coverage.
- **Power:** generators feed **power poles**; any building **inside a pole's radius** is powered. Radius only — no chaining rules beyond placing more poles.
- Not all buildings need power. Some don't at tier I but **need power to keep upgrading**.
- **Droids** need a vastly larger grid — charging is their food.

---

## Population, Roles & Construction

**Not** "select every villager like an RTS unit." **Timberborn + Endzone** model:

| Role | Behaviour |
|------|-----------|
| **Settler / idle** | General labour — builds, carries, fills gaps |
| **Builder** | Waits at the Builder's Depot; construction only |
| **Hauler / transporter** | Logistics only |
| **Professions** | Assigned via **one menu** with a headcount per profession |

**First-pass professions:** woodcutter, forester, quarry worker, miner, scavenger, water collector, pump operator, farmer, rancher, hunter, fisher, forager/herbalist, miller/baker, cook, butcher/smoker, tanner, weaver/tailor, charcoal burner, brickmaker, glassblower, smelter, smith/toolmaker, gunsmith, mechanic, electrician, medic/nurse, researcher, trader, watch/guard, preacher/propagandist.

**Construction priority (locked):** every construction site has a **priority setting**; available builders work the highest-priority sites first (like Timberborn / Endzone).

Population can grow to **hundreds**. **Happiness** stays a simple production-bonus scale that also feeds unrest.

---

## Society — Policies, Elections, Unrest

### Policy building (name TBD)

- The player spends a cost here to enact **policies/edicts** — better healthcare, harsh rationing, propaganda, curfews, etc.
- Usually a **benefit at a cost**; sometimes clearly worth it, sometimes not. Not all are dark.
- **Small cap** on active policies (≈3). A policy (or tree node) can **raise the cap**.

### Elections (Tropico-style)

- Elections come round on a timer. You can make promises; the people vote for or against you.
- **Lose the first election** → a **grace period**: you talk your way into one more year.
- **Win the next** → all good. **Lose again** → overthrown → **game over**.
- **Unrest** isn't an instant loss: fix the problem, or a high percentage votes against you at the next election.
- Lying has consequences (broken promises raise unrest).

---

## Economy & Production (Heart of the Game)

- Deep **multi-step resource chains** (the Resources book stays central).
- Buildings with **assigned workers**.
- **Farms / pastures:** **fertility map** + location; drought strips fertility unless **dams, water tanks, and irrigation** were prepared (Timberborn-like).
- **Research buildings** unlock most non-standard content.
- **Age / era progression:** resource **checklists** + **Town Hall** upgrades (some checklist items team-specific).
- **Scrap**, **Rare Scrap**, **Special Alloys** — which teams can craft and enhance alloys is decided per team later.
- **Team access:** some teams **cannot acquire or process** certain resources (e.g. Hunters never process laser components; Droids skip food).
- **Weapons and armour are goods**, crafted from resources like anything else (knives → axes → swords → handguns → laser rifles) and sold or used as tools.
- **Currency:** Silver / Gold.
- **Food:** raw goods and **Kitchen** recipes; **Droids skip food**.
- **Global per-player stockpile** (warehouse logic).

**Material tiers:** Stone → Bronze → Iron → Steel → Hardened Steel.

**Resources by era (current shortlist)**

- **Early:** Food, Water, Wood, Stone, Silver, Scrap, Cloth, Herbs, Charcoal, Leather, Clay, Salt, Berries, Milk, Eggs, Fish  
- **Mid:** Tin, Copper, Coal, Bricks, Rare Components, Glass, Fertiliser, Medicine, Alcohol, Sulphur, Gunpowder, Paper, Nails, Wire, Mechanical Parts, Smoked/Preserved Food, Tools, Bronze. **Gold** unlocks here.  
- **Late:** Iron, Steel, Electronics, Fuel, Concrete, Special Alloys, Gems, Jewellery, Gold Ingots → Pure Gold Ingots, Rare Scrap  

---

## Trade

- **NPC micro-colony trade** — reliable routes for consistency and as a fallback. Gated by disposition (≥55% to trade).
- **Global market** — off-screen, **single-player PvE economy**. Prices move **only with scheduled/random world events** (a drought pushes water and food up, a radiation storm pushes medicine up). The player's own selling does **not** move prices; there is no competition for the market.

---

## Map & World

- **Large** maps; land should feel **big**. Isometric.
- **Fog of war** at start; revealed areas **stay revealed** for that game.
- **Five hand-made maps — one themed to each playable team** (lore and art direction, not "home turf only").
- **World Forge (sixth "map"):** seed in → detailed map out. Same seed always gives the same map, even after closing the codex. Used to generate starting points for the five team maps (then hand-modified) and as the in-game random map option.
- **Biomes** matter for building and growing. Fertility map, rivers, ore deposits, ruins.
- **NPC micro-colonies** scattered each game — mostly generic wastelanders; occasionally a Warlord of the Wastes faction. **Never** Templars or Blood Ravens.
- Build nearly anywhere with **soft** constraints (foundations, fertility, water, power radius).

---

## Combat (Secondary — Shelved)

- **Not** a design focus. Placeholder only: three simple troop lines — **Melee**, **Ranged**, **Special** — each upgradeable.
- Enough later for bandits or taking an NPC village. No army management, no counter triangle, no PvP balance.
- **Walls / watchtowers** stay as **safety** buildings: raise a local safety meter that makes citizens happier.
- **Arms of Eden** codex is **archived as reference** (moved out of Pages of Eden).

---

## Status Effects → Colony Conditions

- Old combat statuses (**burn, bleed, poison**) are gone.
- Reused as **colony conditions** driven by world events and neglect: **thirst**, **starvation**, **disease**, **radiation sickness**, **psychosis**, **unrest**.

---

## Failure States (Game Over)

1. **Thirst** (water collapse)  
2. **Starvation**  
3. **Irradiation / disease**  
4. **Psychosis / overthrow** (lose the grace-period election)

No regicide victory. No "kill all enemy warlords" loop.

---

## Multiplayer

- **Afterthought / later.** Core design is a strong single-player city-builder.

---

## What Has Been Explicitly Dropped or Demoted

| Removed or dropped | Notes |
|--------------------|--------|
| RTS regicide as core loop | |
| Mixed warlord pairs & **Bond** system | |
| Per-warlord personal skill trees | → one **team** tree + **player** tree |
| Shared School/Lab tech table | → merged into master tree |
| **Templars**, **Blood Ravens** | Gone from game, lore and NPC spawns |
| **Scientists, Afflicted, Mutants, Pack** as playable | → Warlords of the Wastes |
| **Nomads** | Cut; western theme → Hunters |
| Droid Data Centre elimination rule | Data Centre may return with a new function |
| Player-driven market prices | Market reacts to world events only |
| Troop matrix, weapon/armour combat trees | Arms archived; weapons/armour → craftable goods |
| 12 home-turf maps | → 5 team maps + World Forge |
| Heavy multiplayer PvP focus | |

---

## Open Points

1. Militia warlord names and faces (brother & sister placeholder).
2. Unique building per team (placeholders in Warlords of Eden).
3. Which teams can craft / enhance special alloys.
4. Policy building name, policy list, and exact cap.
5. Election cadence (every N years) and promise list.
6. Exact era names and Town Hall checklists.
7. Droid-specific rules beyond charging (water use, repair instead of health, social model).
8. Possible swap of Militia's lore partner faction if Mutants return.

---

## Key Reference Files

| File | Purpose |
|------|---------|
| `design/Pages of Eden/Data/Visions_of_Eden.md` | **This document** — source of truth |
| `design/Pages of Eden/Visions of Eden.html` | Visual version of this document |
| `design/Pages of Eden/Warlords of Eden.html` | Teams, Warlords of the Wastes, skill trees, buildings |
| `design/Pages of Eden/Resources of Eden.html` | Resource, produce and tool chains (incl. weapons/armour as goods) |
| `design/Pages of Eden/Maps of Eden.html` | Five team maps + World Forge |
| `design/Reference/Arms of Eden (Archive).html` | Old RTS arms book — reference only |

---

*Do not reintroduce RTS-era assumptions without an explicit decision log entry.*
