# Arms of Eden
**Source of truth for `Arms of Eden.html`**
**Last updated:** 1 November 2026

Troops, weapons, armour and status effects, all gated per Duo. Edit here, then sync batches into the HTML `DEFAULT_DATA`. Page edits saved with **Edit → Save into HTML** should be copied back here at the next sync.

---

## Rules

- **Per-Duo gating** (Age of Empires style): troops, weapons, armour and status effects each have an access state per Duo.
- **Access states:** ✓ yes · ★ boost (stronger) · ⚡ early · ? tbd · ✕ no.
- **Mixed pairs = union rule** (current default, tweak item by item): if either Warlord's Duo can field it, the pair can. Example: Hunters (no laser) + Scientists → the pair has lasers.
- **Weapons default to the Duo's class access** (melee / bow / gun / laser / plasma / explosive). Individual weapons can override it (e.g. the Pack can't use bronze or steel even though melee is ★).
- **Troop stages are gated by weapon class.** Each stage lists its *typical* weapon and armour; teams without that exact gear may substitute (TBD).
- **Global levelling:** a shared troop line levels globally and keeps that level in every Duo that fields it. Unique troops only level by playing their Warlord / Duo.
- **Droids never mix** and wear only Droid Plating. They are immune to Bleed, Poison and Psychosis and vulnerable to Paralysis.

---

## Duo class access

| Duo | Melee | Bows | Guns | Laser | Plasma | Explosives | Support | Siege | Note |
|---|---|---|---|---|---|---|---|---|---|
| Survivors | ✓ | ✓ | ✓ | ✓ | ? | ✓ | ✓ | ✓ | Broad access, shallow specialisation |
| The Hunters | ★ | ✓ | ★ | ✕ | ✕ | ★ | ✓ | ★ | Never lasers |
| Scientists | ✓ | ✓ | ✓ | ✓ | ★ | ✓ | ★ | ✓ | Strongest plasma; electricity specialists |
| Mutants | ★ | ✓ | ✓ | ✓ | ? | ✓ | ✓ | ✓ | Melee tanks; poor weapon/tool use |
| Afflicted | ✓ | ✓ | ✓ | ✓ | ? | ✓ | ✓ | ? | Hazmat; thrive in hostile zones |
| Militia | ✓ | ✓ | ✓ | ✓ | ? | ✓ | ✓ | ★ | Heavy armour; heavy-firearms direction TBD |
| Bloodveil | ★ | ✓ | ✓ | ✓ | ? | ✓ | ★ | ? | Female troops only |
| Templars | ★ | ✓ | ✓ | ✓ | ? | ✓ | ✓ | ✓ | In review — may lean guns |
| The Pack | ★ | ✓ | ✕ | ✕ | ✕ | ? | ? | ? | Narrowest access; no guns |
| Ashen | ✓ | ✓ | ✓ | ✓ | ? | ✓ | ✓ | ✓ | Fire and psychology |
| Nomads | ✓ | ✓ | ✓ | ✓ | ? | ✓ | ✓ | ✓ | Vehicles and mobility |
| Droids | ✓ | ? | ✓ | ⚡ | ⚡ | ? | ? | ✓ | Chassis troops only; never mixes |

---

## Troops tab

### Counter triangle
Melee beats Grenadier · Grenadier beats Archer · Archer beats Melee. Support and Siege sit outside the triangle.

| Category | Trained at | Counters | Countered by |
|---|---|---|---|
| Melee | Barracks | Grenadier | Archer |
| Archer | Range | Melee | Grenadier |
| Grenadier | Munitions Workshop | Archer | Melee |
| Support | Infirmary (suggestion) | — | — |
| Siege | Siege Workshop (suggestion) | Buildings | Melee |

### Shared troop lines

| Line | Category | Global level | Stages (class · typical weapon · armour) |
|---|---|---|---|
| Infantry Line | Melee | 3 | Scrapper (melee · Scrap Blade · Padded Cloth) → Brawler (Bronze Sword · Leather) → Enforcer (Iron Cleaver · Iron Mail) → Champion (Steel Longblade · Steel Plate) |
| Polearm Line | Melee | 1 | Spiker (Rebar Spike · Padded) → Pikeman (Iron Pike · Leather) → Halberdier (Steel Halberd · Iron Mail) |
| Bow Line | Archer | 2 | Slinger (Sling · Padded) → Bowman (Short Bow · Leather) → Longbowman (Longbow · Brigandine) — the Pack's only ranged option |
| Firearm Line | Archer | 1 | Pipe Gunner (gun · Pipe Gun) → Rifleman (Bolt Rifle) → Marksman (Marksman Rifle) → Laser Marksman (**laser** · Laser Rifle · Ranger Weave) |
| Grenadier Line | Grenadier | 1 | Bomb Thrower (Molotov) → Grenadier (Grenade) → Demolitionist (Dynamite Charge) |
| Launcher Line | Grenadier | 0 | Mortar Crew (Pipe Bomb) → Rocketeer (Rocket Launcher) → Plasma Lobber (**plasma** · Plasma Caster) |
| Medic Line | Support | 1 | Field Medic → Combat Medic → Surgeon — heal HP and cleanse statuses (AoE Monk style) |
| Siege Line | Siege | 0 | Ram Crew → Scrap Catapult → Siege Mortar (explosive) → Plasma Cannon (plasma) |

Placeholder stats: base Attack / Defence / Armour / Speed per category, +45% per stage, +5% all stats per global level.

### Warlord signatures (usually one per Warlord — a troop, or sometimes a building)

| Warlord | Duo | Kind | Signature | Role |
|---|---|---|---|---|
| Viktor | Survivors | Troop | Wasteland Raider | Fast raider that loots resources on kills (suggestion) |
| Ayla | Survivors | Troop | Gate Warden | Shield defender — bonus holding walls and gates (suggestion) |
| Brick | The Hunters | Troop | Sapper | Explosive charges vs walls/buildings; mining bonus (suggestion) |
| Twig | The Hunters | Troop | Trapper | Marksman who lays snares that slow and bleed (suggestion) |
| Dr. Something | Scientists | Troop | Arc Trooper | Paralysis weapon that stuns groups (suggestion) |
| Mixy | Scientists | **Building** | Field Infirmary | Heals nearby units, cleanses statuses (suggestion) |
| Smash | Mutants | Troop | Mutant Brute | Huge melee damage — double rations (suggestion) |
| Bash | Mutants | Troop | Thickhide | Tank brute that soaks damage (suggestion) |
| Afflicted I | Afflicted | Troop | Hazmat Sprayer | Poison clouds; immune to its own toxins (suggestion) |
| Afflicted II | Afflicted | Troop | Plague Carrier | Spreads disease between enemies (suggestion) |
| Militia Brother | Militia | Troop | Shield-wall Trooper | Heavy-armour formation infantry (suggestion) |
| Militia Sister | Militia | Troop | Heavy Gunner | Heavy-firearm suppression — Militia's gun identity vs Templars (suggestion) |
| Brunette Sister | Bloodveil | Troop | Bleed Dancer | Female blade dancer — stacking bleed (suggestion) |
| Redhead Sister | Bloodveil | Troop | Coven Witch | Female caster — conversion and psychosis (suggestion) |
| Templar I | Templars | Troop | Holy Knight | Heavy knight in scavenged plate (suggestion) |
| Templar II | Templars | Troop | Gun Templar | Faith and firearms — guns direction under review (suggestion) |
| Pack Cousin I | The Pack | Troop | Ravager | Cannibal berserker, extreme attack speed (suggestion) |
| Pack Cousin II | The Pack | Troop | Beastmaster | Commands and buffs animal packs (suggestion) |
| Blowtorch | Ashen | Troop | Flame Trooper | Flamethrower infantry — burning (suggestion) |
| Vesper | Ashen | **Building** | Breaking Pens | Psychological control of POWs and slaves (suggestion) |
| Nomad Mother | Nomads | **Building** | Waystation | Relocatable outpost / satellite-colony hub (suggestion) |
| Nomad Son | Nomads | Troop | War Buggy | Fast vehicle raider (suggestion) |
| Droid 0001 | Droids | **Building** | Data Centre | Replaces the Town Centre; destroy it to eliminate the Droids |

### Faction troops (Duo-wide)

- **The Pack (Animals class):** Dogs, Vultures, Lions, Bears, Elephants, Hippos, and Wild Beasts — any map animal can be bred.
- **Droids (chassis):** Light Chassis, Heavy Chassis, further chassis TBD.
- **Nomads (vehicles):** Dune Buggy, War Rig, Mobile Platform (suggestions).
- **Bloodveil roster rule:** female troops only.

---

## Weapons tab

Rows are material tiers: I Stone/scrap · II Bronze & black powder · III Iron · IV Steel & energy · V Hardened & plasma. Codes after the name mark status effects inflicted.

| Lane | Tier I | Tier II | Tier III | Tier IV | Tier V |
|---|---|---|---|---|---|
| Blades | Scrap Blade (Bl) | Bronze Sword (Bl) — Pack ✕ | Iron Cleaver (Bl) | Steel Longblade (Bl) — Pack ✕ | Hardened Warblade (Bl) — Pack ✕ |
| Polearms | Rebar Spike | Bronze Spear — Pack ✕ | Iron Pike | Steel Halberd (Bl) — Pack ✕ | — |
| Bows | Sling | Short Bow | Longbow (Bl) | Compound Bow — Pack ✕ | — |
| Guns | — | Pipe Gun | Bolt Rifle | Repeater Rifle | Marksman Rifle |
| Heavy Guns | — | — | Scattergun | Heavy Machine Gun — Militia ★ | — |
| Laser | — | — | — | Laser Pistol (Bu) | Laser Rifle (Bu) |
| Plasma | — | — | — | — | Plasma Caster (Bu) |
| Explosives | Molotov (Bu) | Pipe Bomb | Grenade (Bl) | Rocket Launcher (Bu) | — |
| Demolition | — | — | Dynamite Charge — Hunters ★ | Shaped Charge — Hunters ★ | — |
| Electric | — | — | Stun Prod (Pa) — Scientists ★, others ? | Arc Gun (Pa) — Scientists ★ | — |
| Fire & Chem | — | Toxin Flask (Po) — Afflicted ★, Bloodveil ✓ | Toxin Sprayer (Po, Di) — Afflicted only | Flamethrower (Bu) — Ashen ★ | — |
| Ritual | — | Ritual Blade (Bl, Po) — Bloodveil only | Veil Censer (Ps) — Bloodveil, Ashen ? | — | — |

### Recipes (inputs link to Resources of Eden)

| Weapon | Inputs | Crafted at |
|---|---|---|
| Scrap Blade | Scrap | Workbench (suggestion) |
| Bronze Sword | Bronze, Leather | Blacksmith |
| Iron Cleaver | Iron, Wood | Blacksmith |
| Steel Longblade | Steel, Leather | Blacksmith |
| Hardened Warblade | Hardened Steel, Leather | Blacksmith (imported ingots OK) |
| Rebar Spike / Bronze Spear / Iron Pike / Steel Halberd | Scrap or tier metal + Wood | Workbench / Blacksmith |
| Sling | Leather, Stone | Workbench |
| Short Bow / Longbow / Compound Bow | Wood + Leather / Wood + Iron / Steel + Wire | Bowyer (suggestion) |
| Pipe Gun | Scrap, Gunpowder | Gunsmith (suggestion) |
| Bolt Rifle | Iron, Wood, Gunpowder | Gunsmith |
| Repeater Rifle | Steel, Mechanical Parts, Gunpowder | Gunsmith |
| Marksman Rifle | Hardened Steel, Glass, Mechanical Parts | Gunsmith |
| Scattergun / Heavy MG | Iron + Gunpowder / Steel + Mechanical Parts + Gunpowder | Gunsmith |
| Laser Pistol / Laser Rifle | Electronics, Glass, Wire / Electronics, Glass, Steel | Electronics Lab (suggestion) |
| Plasma Caster | Electronics, Rare Components, Fuel | Laboratory (suggestion) |
| Molotov | Alcohol, Cloth | Munitions Workshop |
| Pipe Bomb / Grenade | Scrap + Gunpowder / Iron + Gunpowder | Munitions Workshop |
| Rocket Launcher | Steel, Gunpowder, Fuel, Mechanical Parts | Munitions Workshop |
| Dynamite / Shaped Charge | Gunpowder + Paper / Steel + Gunpowder | Munitions Workshop |
| Stun Prod / Arc Gun | Copper + Wire / Electronics + Wire + Copper | Laboratory |
| Toxin Flask / Toxin Sprayer | Glass + Herbs / Scrap + Herbs + Mechanical Parts | Apothecary / Gas Works |
| Flamethrower | Steel, Fuel | Munitions Workshop |
| Ritual Blade / Veil Censer | Iron + Herbs / Silver + Herbs | Blood Altar (suggestion) |

---

## Armour tab

Rows are material tiers. Droids can't wear any of these except Droid Plating. M / R = melee / ranged armour (placeholder values).

| Lane | Tier I | Tier II | Tier III | Tier IV | Tier V |
|---|---|---|---|---|---|
| Light | Padded Cloth (1/1) | Leather Armour (2/2) | Brigandine (3/3) | Ranger Weave (3/5) — Pack ✕ | — |
| Medium | Scrap Plating (2/1) | Bronze Scale (3/2) — Pack ✕ | Iron Mail (4/3) | Steel Mail (5/4) — Pack ✕ | — |
| Heavy | — | — | Iron Plate (6/4) — Militia/Templars ★, Bloodveil ? | Steel Plate (7/6) — Militia/Templars ★, Pack ✕ | Hardened Plate (9/8) — Militia ★, Pack ✕ |
| Shields | Scrap Shield (1/2) | Bronze Buckler (2/2) — Pack ✕ | Iron Kite Shield (3/4) — Militia ★ | Riot Shield (3/6) — Militia ★, Pack ✕ | — |
| Hazard & Tech | — | — | Fireproof Coat (resists Burn) — Ashen ★ | Hazmat Suit (resists Poison, Radiation, Disease) — Afflicted ★, Scientists ✓, others ? | Powered Exo-Frame (8/7) — Scientists ✓, others ? |
| Faction | — | Ritual Garb — Bloodveil only | Beast Pelts — Pack only | Templar Plate — Templars only | Droid Plating — Droids only |

---

## Status Effects appendix

| Status | Code | Pattern | Notes | Counters |
|---|---|---|---|---|
| Bleeding | Bl | Medium DoT | Blades, polearms, ritual blades, Pack bites | Bandages, medics; armour reduces it (suggestion) |
| Burning | Bu | Short, intense DoT | Fire, plasma, energy burns | Fireproof gear, Fireproofing tech; Ashen resist |
| Poison | Po | Long DoT | Toxins that linger | Medicine, Antitoxins tech, hazmat suits |
| Disease | Di | Spreads between nearby units (suggestion) | Afflicted plague mechanic — not in Visions yet | Medics, quarantine (suggestion) |
| Radiation | Ra | Environmental zones | Hurts most groups; Afflicted resist and gain bonuses | Radiation Shielding tech, hazmat suits |
| Paralysis | Pa | Electricity stun | Possibly duo-exclusive (Scientists); Droids vulnerable | Distance, insulation (suggestion) |
| Psychosis | Ps | Temporary conversion, AoE monk-style | Alive-but-controlled; rare — Bloodveil, Ashen | Healers cleanse (suggestion); Droids immune |

### Inflict matrix (draft — not locked)

| Duo | Bleed | Burn | Poison | Disease | Radiation | Paralysis | Psychosis | Defence |
|---|---|---|---|---|---|---|---|---|
| Survivors | ✓ | ✓ | ✓ | ✕ | ✕ | ✕ | ✕ | — |
| The Hunters | ✓ | ✓ | ? | ✕ | ✕ | ✕ | ✕ | — |
| Scientists | ✓ | ✓ | ? | ✕ | ? | ★ | ✕ | — |
| Mutants | ✓ | ? | ✕ | ✕ | ? | ✕ | ✕ | — |
| Afflicted | ? | ✕ | ★ | ★ | ★ | ✕ | ? | Resist Poison, Radiation |
| Militia | ✓ | ✓ | ✕ | ✕ | ✕ | ✕ | ✕ | — |
| Bloodveil | ★ | ✕ | ✓ | ✕ | ✕ | ✕ | ✓ | — |
| Templars | ✓ | ? | ✕ | ✕ | ✕ | ✕ | ✕ | — |
| The Pack | ★ | ✕ | ✕ | ✕ | ✕ | ✕ | ✕ | — |
| Ashen | ? | ★ | ? | ✕ | ✕ | ✕ | ✓ | Resist Burn |
| Nomads | ✓ | ✓ | ? | ✕ | ✕ | ✕ | ✕ | — |
| Droids | ✕ | ✓ | ✕ | ✕ | ? | ? | ✕ | Immune Bleed, Poison, Psychosis · Vulnerable Paralysis |

---

## Open questions

1. **Mixed-pair exceptions** — union is the default; which items should *not* carry over (e.g. Bloodveil female-only troops, Droid chassis)?
2. **Exact gear substitution** — if a team lacks a stage's typical weapon (Pack at Champion), do they substitute iron gear or lose the stage?
3. **Paralysis** — Scientists-exclusive, or shared with Droids?
4. **Disease** — keep as its own status or fold into Poison?
5. **Templars vs Militia** — melee knights vs heavy firearms (Axel).
6. **Pack explosives and siege** — allowed? Elephants as siege?
7. **Real stats and costs** for every line, weapon and armour piece.
