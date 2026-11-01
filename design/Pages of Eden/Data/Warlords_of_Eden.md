# Warlords of Eden
**Source of truth for `Warlords of Eden.html`**
**Last updated:** 1 November 2026

Duos, Warlords, signatures, skill trees, tech and buildings. Edit here, then sync batches into the HTML `DEFAULT_DATA`. Page edits saved with **Edit → Save into HTML** should be copied back here at the next sync.

---

## Core rules

- **Default start:** Survivors — Viktor & Ayla (father & daughter). Other Duos unlock via challenges (not defeat-to-unlock).
- **Progression:** personal skill tree per Warlord; full specialised tree per natural Duo (both feed it, ~2× when paired); mixed pairs grow a light Warlord–Warlord Bond bar (small passives, not a full tree). Colony tech is per match.
- **Signatures:** usually one per Warlord — a unique troop, or sometimes a unique building. Troop details live in Arms of Eden; buildings live here.
- **Mixed pairs:** union rule (tweakable item by item). Buildings a pair cannot construct stay locked even if resources exist.
- **Droids:** single Warlord (Droid 0001), never mixes; the Data Centre replaces the Town Centre.
- **Warlords in combat:** champion units that keep full citizen abilities; they die for the current match only.

---

## Palette, flags & banners

**Rule:** the Duo colour is the shared team theme. Each Warlord adds a personal accent that sits inside it. A natural Duo shows the Duo colour with both accents; a **mixed pair adopts the two Warlord accents** as its theme (e.g. Ayla brings Dusk Violet into any pair).

**Three banner types per Duo** (designs not started — placeholders in Warlords of Eden → Team tab):
1. **Colony flag** — the civilisation flag: Duo logo in the centre, Duo primary colour field, both Warlord accents incorporated.
2. **Horizontal banner** — hangs on buildings and spans menus / headers.
3. **Vertical sash** — tall swallowtail banner for buildings, unit standards and side menus.

All three always use **the Duo primary colour + both Warlord accents**. A Duo **logo** sits alongside (current drafts are the SVG sigils).

**Picture files:** `Images/Flags/<Duo> Colony Flag.jpg` · `Images/Banners/<Duo> Horizontal.jpg` · `Images/Banners/<Duo> Vertical Sash.jpg` · `Images/Logos/<Duo>.jpg` (Duo name without “The”). Shortlist variants: add `1`, `2`, `3` … before the extension.

**Tweaking colours:** Warlords of Eden → Edit → Team tab → *Flags, banners & palette* → click a swatch for a colour picker. It applies live and saves with the codex; copy the new hex values back here at the next sync (Arms and Resources pick them up from this file).

| Duo | Duo colour | Warlord accent I | Warlord accent II |
|---|---|---|---|
| Survivors | `#8b9096` Gunmetal Grey — salvage, practicality, no allegiance | Viktor `#5b8fd1` Steel Blue — cold steel of the frontline; stubborn, attack-first | Ayla `#9a6bb8` Dusk Violet — the night watch; guarded, holds the walls until dawn |
| The Hunters | `#a3a84e` Olive Drab — field, forest and homestead | Brick `#b8875a` Quarry Ochre — stone dust, clay, blasting powder | Twig `#6faa45` Moss Green — living timber, a patient marksman's cover |
| Scientists | `#3fd0c9` Lab Teal — sterile light, humming equipment | Dr. Something `#4f9dff` Arc Blue — voltage, plasma, instability | Mixy `#7fe3a4` Reagent Mint — antiseptic, and the toxins in the next vial |
| Mutants | `#9bc53d` Toxic Green — the vat they came out of | Smash `#e2552f` Rage Red — hits first, thinks later | Bash `#d9a23a` Bruise Amber — slower temper, harder to stop |
| Afflicted | `#c2c43c` Hazard Yellow — warning tape, filters | Afflicted I `#a8e04a` Rad Lime — irradiated ground feels like home | Afflicted II `#4fb39a` Fever Teal — disease, rot, the quiet spread |
| Militia | `#a4ae74` Khaki — uniforms, sandbags, drill yards | Brother `#7f94a6` Gun-Metal Blue — heavy armour, heavier firearms | Sister `#c9a24a` Brass — shell casings, medals, command |
| Bloodveil | `#c42a42` Blood Crimson — ritual blood, candlelit swamps | Brunette `#8e3a7c` Bruised Plum — the blade, bleed, ritual violence | Redhead `#e8643a` Copper Flame — the rites, conversion, psychosis |
| Templars | `#d6b45e` Reliquary Gold — gilded relics, old faith | Templar I `#e2d9c3` Bone Ivory — the elder; vows, plate, scripture | Templar II `#b8433a` Crusader Red — faith carried with a rifle |
| The Pack | `#c58a45` Rust Hide — tanned skins, dried blood, dust | Cousin I `#b0412e` Raw Flesh — cannibal savagery under the joke | Cousin II `#d8c08a` Bleached Bone — the one the beasts answer to |
| Ashen | `#ff5a1f` Pyre Orange — fire as an art form | Blowtorch `#ffb02e` Flame Gold — restless, every blaze a composition | Vesper `#9da3c2` Cold Ash — apathetic, observant, the cold mind |
| Nomads | `#d7a85e` Mojave Sand — open roads, sun-bleached canvas | Mother `#b8693a` Saddle Rust — worn leather, old roads | Son `#3fbfae` Desert Turquoise — Mojave jewellery, open sky |
| Droids | `#4fb0ff` Signal Blue — status LEDs, cold data | Droid 0001 `#bfeaff` Core White — one mind, many shells | — (never mixes) |

---

## Terrain & home turf

Every Duo has a home terrain, a hostile terrain and a home map; every Warlord has one subtle terrain trait. Shown on each Warlord column (Terrain) and each Duo's Team tab (Home turf). The full tables — terrain types, effects, the 12 maps and all 23 Warlord terrain traits — live in **`Maps_of_Eden.md`**, which is the source of truth for them.

---
## Duos

### 1. Survivors — Core identity

**Warlords:** Viktor & Ayla  
**Motto:** Scavenge. Barter. Endure.  
**Theme colour:** #8b9096 (Gunmetal Grey) · **Particles:** embers

**Lore:** They were nobody before the world ended — father and daughter, Viktor and Ayla, still walking the ash roads together. Bullets run out; a fair trade buys another tomorrow. No mutations, no doctrine, no machine voice in their heads — just the default pair every new commander learns on: he pushes the fight outward, she holds the walls until dawn.

**Way of life:** Vanilla wasteland survivors — scavenge by day, barter by firelight. Viktor (attack) and Ayla (defence) are the game's default starting duo; faster, forgiving progression than specialist factions.

**Strengths:**
- Default starting Duo — others unlock via challenges
- Trade lean — stronger barter and market returns
- Balanced pair: Viktor (attack) + Ayla (defence)
- Minimal penalties — forgiving for new players
- Full Melee → Guns → Laser progression
- Broad status-effect access — shallow specialisation (system-wide)

**Weaknesses:**
- No extreme specialisation
- Lower peak power than focused Duos
- No signature damage type

**Arsenal:** melee ✓ · bow ✓ · gun ✓ · laser ✓ · plasma ? · explosive ✓  
**Damage affinities:** None defined  
**Duo tree branches:** Bond · Trade · Scavenge  
**Duo unique building:** Unique Building – Placeholder — Rough idea: Barter Post — a trade hub that boosts market returns (suggestion).  
**Bond note:** Natural Survivors tree: both Viktor and Ayla feed it when paired (~2× duo XP vs solo Warlord games). Mixed Bond bar is separate when you pair them with outsiders.

**Open questions:**
- Personal traits not locked
- Unique troop and building still undefined
- Exact challenge gates for other Duos (Visions doc)

### 2. The Hunters — Core identity

**Warlords:** Brick & Twig  
**Motto:** Live off the land. Waste nothing.  
**Theme colour:** #a3a84e · **Particles:** ash

**Lore:** Brick and Twig were farmers and craftsmen long before they were killers, and they never stopped being either. They live quietly on what the land still gives — stone from the hills, timber from the dead forests — and answer trespass with gunfire, blades and carefully placed explosives. They distrust anything that hums. They will never field a laser.

**Way of life:** Self-sufficient homesteaders. Brick works stone and the mines; Twig works wood and lumber. Everything is built, mended and reused by hand.

**Strengths:**
- Excellent with guns, melee and explosives
- Strong stone + wood economy (Brick & Twig)
- Reliable, hard-hitting mid game

**Weaknesses:**
- Never gain laser weapons
- Late-game ceiling capped at guns + explosives

**Arsenal:** melee ★ · bow ✓ · gun ★ · laser ✕ · plasma ✕ · explosive ★  
**Damage affinities:** Explosive  
**Duo tree branches:** Homestead · Firearms · Demolition  
**Duo unique building:** Unique Building – Placeholder — Rough idea: Hunting Lodge — food from hunting plus trap crafting (suggestion).

**Open questions:**
- Personal traits not locked

### 3. Scientists — Partially defined

**Warlords:** Dr. Something (name TBD) & Mixy  
**Motto:** Progress has a body count.  
**Theme colour:** #3fd0c9 · **Particles:** sparks

**Lore:** Somewhere beneath the ruins a laboratory kept its lights on. Dr. Something and Mixy are obsessed lab partners — not lovers, not family — united only by the work. He builds weapons that arc and scream; she keeps the subjects, and him, alive long enough to finish the next trial. Their plasma burns hotter than anyone else's. One failed gene-split did not stay in the lab: it became the first Mutants, and the birth of an entire race.

**Way of life:** Research above everything. Experimental weapons, electrocution, and plasma on his side; healing, chemistry, and possibly poison on hers. The pair lives for the experiment — and lives with what escaped it.

**Strengths:**
- Strongest plasma access in the game
- Electrocution / paralysis weaponry
- Healing support
- Origin story ties directly to the Mutant race

**Weaknesses:**
- Fragile early game (suggestion)
- Heavy reliance on research timing (suggestion)

**Arsenal:** melee ✓ · bow ✓ · gun ✓ · laser ✓ · plasma ★ · explosive ✓  
**Damage affinities:** Electricity / Paralysis, Plasma, Poison (possible)  
**Duo tree branches:** Plasma · Voltage · Medicine  
**Duo unique building:** Unique Building – Placeholder — Rough idea: Laboratory Annex — plasma research and experiments (suggestion).

**Open questions:**
- Final names — “Dr. Something” is still a placeholder
- Does Mixy's kit include poison?

### 4. Mutants — Core identity

**Warlords:** Smash & Bash  
**Motto:** Two fists. One face.  
**Theme colour:** #9bc53d · **Particles:** spores

**Lore:** Smash and Bash are identical twin brothers — the first out-of-control gene-split from the Scientists' work, and the birth of the mutant race. Same face, same scars, two tempers in one hulking body type. They wade through melee lines that would shred anyone else, poor with weapons, worse with tools, and hungry as a starving army. Sometimes they fight each other.

**Way of life:** Brute force and appetite. Mirrored traits, unusually strong harmony when the twins lead together — and the occasional twin argument that stops the whole camp.

**Strengths:**
- Exceptional melee tanks
- Very strong harmony when paired together
- Mirrored traits keep the pair predictable
- Canonical first Mutants — tied to Scientists' failed experiment

**Weaknesses:**
- Poor weapon and tool use
- High food consumption
- Occasional twin arguments

**Arsenal:** melee ★ · bow ✓ · gun ✓ · laser ✓ · plasma ? · explosive ✓  
**Damage affinities:** None defined  
**Duo tree branches:** Brawn · Harmony · Appetite  
**Duo unique building:** Unique Building – Placeholder — Rough idea: Feeding Pit — food storage that offsets the twins' appetite (suggestion).  
**Mixing note:** Twin harmony is lost when Smash or Bash is paired with anyone else.

**Open questions:**
- Same character model — how do players tell Smash and Bash apart in-game?

### 5. Afflicted — Partially defined

**Warlords:** Afflicted I (name TBD) & Afflicted II (name TBD)  
**Motto:** Breathe deep.  
**Theme colour:** #c2c43c · **Particles:** spores

**Lore:** Behind the hazmat suits, the Afflicted move like a couple who learned to survive together in air that kills everyone else. They lean boyfriend/girlfriend as Warlords — poison and disease specialists with a gas-mask aesthetic across the faction. Radiation and poison barely touch them; in zones that shred other groups, they often thrive. Whether they are defensive survivors who weaponised the sickness or something darker is still open.

**Way of life:** Hazmat-clad poison and disease play. Environmental bonuses in toxic or irradiated zones that hurt other Duos. Strong area denial when the map turns hostile.

**Strengths:**
- Poison and disease specialists
- Radiation + poison resistance
- Environmental bonuses in hostile zones
- Vision roster: poison, disease, bleed, psychosis (access TBD per status matrix)

**Weaknesses:**
- Exact fantasy still open — defensive vs plague cult
- Warlord names not final

**Arsenal:** melee ✓ · bow ✓ · gun ✓ · laser ✓ · plasma ? · explosive ✓  
**Damage affinities:** Poison, Disease, Radiation, Bleed (TBD), Psychosis (TBD)  
**Duo tree branches:** Toxins · Contagion · Masks  
**Duo unique building:** Unique Building – Placeholder — Rough idea: Gas Works (defensive) or Plague House (cult) (suggestion).

**Open questions:**
- Lock fantasy — defensive poison users vs psychotic plague cult
- Final Warlord names
- Visual briefs for image generation

### 6. Militia — Partially defined

**Warlords:** Militia Brother (name TBD) & Militia Sister (name TBD)  
**Motto:** Hold the line. Then hold it again.  
**Theme colour:** #a4ae74 · **Particles:** ash

**Lore:** What's left of an army — or what a brother and sister built to look like one. The Militia march slow and heavy, wrapped in scavenged plate and discipline. They are the hardest wall in the wasteland, and right now the faction with the least soul. They need a story that clearly separates them from Templars (melee knights) and doesn't blur into “another heavy infantry Duo”.

**Way of life:** Slow, heavily armoured military force — heavy firearms and formation fighting are the likely hook (discussion with Axel ongoing).

**Strengths:**
- Heavy armour
- Disciplined formation fighting (suggestion)
- Heavy firearms lean (suggestion — differentiation TBD)

**Weaknesses:**
- Slow movement
- Weakest identity — needs a personality hook
- Must differentiate from Templars and Mutants (open with Axel)

**Arsenal:** melee ✓ · bow ✓ · gun ✓ · laser ✓ · plasma ? · explosive ✓  
**Damage affinities:** None defined  
**Duo tree branches:** Armour · Formation · Command  
**Duo unique building:** Unique Building – Placeholder — Rough idea: Bunker / Armoury (suggestion).

**Open questions:**
- Personality hook and story (with Axel)
- Confirm brother & sister Warlords
- Heavy firearms vs Templars overlap

### 7. Bloodveil — Partially defined

**Warlords:** Brunette Sister (name TBD) & Redhead Sister (name TBD)  
**Motto:** What bleeds can be blessed.  
**Theme colour:** #c42a42 · **Particles:** drip

**Lore:** Out in the drowned forests and swamps, a hot goth witch cult of women keeps the old rites alive. Two sisters lead them — one brunette, one redhead — usually in agreement, with fierce pushback when they are not. Female troops only. They heal their own, convert the lost, and cut with ritual blades. Blood and poison damage; among the few Duos that can inflict Psychosis. They break easily — so do the minds they break.

**Way of life:** Female-only coven. Blood + poison damage, conversion, and healing. The sisters split complementary traits roughly 70/30 — blade lean vs rites lean.

**Strengths:**
- Female troops only — unique roster rule
- Blood + poison damage
- Conversion of enemy units
- Psychosis infliction (rare)
- Healing
- Complementary 70/30 sister traits

**Weaknesses:**
- Low hit points
- Fragile if caught without support (suggestion)
- Faction name still subject to change

**Arsenal:** melee ★ · bow ✓ · gun ✓ · laser ✓ · plasma ? · explosive ✓  
**Damage affinities:** Bleed, Poison, Psychosis  
**Duo tree branches:** Blood · Rites · Conversion  
**Duo unique building:** Unique Building – Placeholder — Rough idea: Blood Altar — conversion and healing rites (suggestion).  
**Mixing note:** The 70/30 sister split only fully works when both sisters lead together (assumption).

**Open questions:**
- Final faction name (Bloodveil TBD)
- Sister names
- Visual briefs for image generation

### 8. Templars — Partially defined

**Warlords:** Templar I (name TBD) & Templar II (name TBD)  
**Motto:** Steel, scripture, and the long march.  
**Theme colour:** #d6b45e · **Particles:** ash

**Lore:** They found an old faith in the ruins and forged armour around it. The Templars are post-apocalyptic holy knights — under review with Axel because they risk overlapping Mutants (heavy melee) and Militia (heavy firearms). Possible direction: lean more into guns, pull back from pure medieval fantasy. Warlords are possibly two older brothers bound by vows and duty.

**Way of life:** Religious knights in scavenged plate — direction shifting toward firearms + faith rather than pure medieval melee (discussion ongoing).

**Strengths:**
- Holy knight identity
- Durable heavy fighters (suggestion: morale bonuses)
- Possible firearms lean to differentiate from Mutants/Militia

**Weaknesses:**
- Less flexible at range until identity locks (suggestion)
- Overlap risk with Mutants and Militia — in review

**Arsenal:** melee ★ · bow ✓ · gun ✓ · laser ✓ · plasma ? · explosive ✓  
**Damage affinities:** None defined  
**Duo tree branches:** Faith · Steel · Crusade  
**Duo unique building:** Unique Building – Placeholder — Rough idea: Chapel Keep — faith and knight training (suggestion).

**Open questions:**
- Review with Axel — melee vs guns identity
- Warlord names
- Faith / doctrine details

### 9. The Pack — Partially defined

**Warlords:** Pack Cousin I (name TBD) & Pack Cousin II (name TBD)  
**Motto:** HUNT. EAT. MORE.  
**Theme colour:** #c58a45 · **Particles:** dust

**Lore:** The Pack's leaders are cousins — with a running joke that outsiders think they're brother and sister, and they always correct it. The surface is almost comedic; the core is cannibalistic and savage. Primal, not cartoon cavemen. They never learned guns and never needed them. Tech is deliberately stunted: stone → iron only — no brass, steel, or alloy refinement. Research and building upgrades stay limited; troop upgrades expand instead. They breed any animal, including wild map beasts other civs cannot tame. Extreme DPS from attack speed and numbers.

**Way of life:** Primal savagery with broken speech. Bows only for ranged. Animals class dominates — map predators join them for free. Cannibalistic undertone beneath the joke.

**Strengths:**
- Unique Animals troop class
- Breed any animal — including wild map species
- Very strong early game
- Extremely high DPS (attack speed + numbers)
- Map animals become free troops

**Weaknesses:**
- No guns — bows only
- Narrowest status-effect access (system-wide) — compensated by variety
- Stunted tech: stone → iron only; limited building/research upgrades
- Weak conventional late game (suggestion)

**Arsenal:** melee ★ · bow ✓ · gun ✕ · laser ✕ · plasma ✕ · explosive ?  
**Damage affinities:** None defined  
**Duo tree branches:** Beasts · Frenzy · Primal  
**Duo unique building:** Unique Building – Placeholder — Rough idea: Beast Den — breed and house any animal, including wild species other Duos cannot (suggestion).

**Open questions:**
- Cousin names
- Explosives — allowed or not?
- Visual briefs for image generation

### 10. Ashen — Core identity

**Warlords:** Blowtorch & Vesper  
**Motto:** Everything burns beautifully.  
**Theme colour:** #ff5a1f · **Particles:** embers

**Lore:** Gothic arsonists and intellectual bandits. Blowtorch treats fire as art; Vesper watches it burn with cold eyes and studies the people who survive it. Together they wield fire, psychosis, slavery, and trade — dark tools as mechanics, not constant moral quizzes. Tone peaks brutal when you play Ashen.

**Way of life:** Fire as art, psychology as control. Strong traders; discounted citizens (slower production). POW slavery and forced measures when starving are mechanical options in the vision doc.

**Strengths:**
- Reduced fire damage taken
- Psychosis and psychological control
- Good traders
- Discounted citizen production
- Slavery / dark economy tools (mechanical)

**Weaknesses:**
- Discounted citizens are slower to produce
- One of the most brutal playstyles

**Arsenal:** melee ✓ · bow ✓ · gun ✓ · laser ✓ · plasma ? · explosive ✓  
**Damage affinities:** Fire, Psychosis  
**Duo tree branches:** Pyre · Psyche · Commerce  
**Duo unique building:** Unique Building – Placeholder — Rough idea: Pyre Gallery — fire as art; fear and morale effects (suggestion).

**Open questions:**
- Personal traits not locked

### 11. Nomads — Partially defined

**Warlords:** Nomad Mother (name TBD) & Nomad Son (name TBD)  
**Motto:** The road is the kingdom.  
**Theme colour:** #d7a85e · **Particles:** dust

**Lore:** Western Mojave Fallout cowboy energy — dust, sun, and engines that don't quit. The Nomads can move their Town Centre or spin up multiple settlements early. Warlords lean toward an old mother and her son, but names and faces are not locked. They ride vehicles nobody else can build and may carry a global unit movement speed bonus (suggestion).

**Way of life:** Mobile empire: relocate Town Centre, multiple early colonies, vehicle troops, high mobility. Cowboy wasteland aesthetic.

**Strengths:**
- Can move Town Centre (concept)
- Multiple Town Centres / early satellites
- High mobility
- Unique vehicle troops
- Possible global movement speed bonus (suggestion)

**Weaknesses:**
- Warlord names and exact ages not final
- Weaker static defence (suggestion)

**Arsenal:** melee ✓ · bow ✓ · gun ✓ · laser ✓ · plasma ? · explosive ✓  
**Damage affinities:** None defined  
**Duo tree branches:** Roads · Colonies · Vehicles  
**Duo unique building:** Unique Building – Placeholder — Rough idea: Caravan Yard — vehicle depot / mobile staging (suggestion).

**Open questions:**
- Final Warlord names
- Confirm mother + son pairing
- Visual briefs — cowboy / Mojave look

### 12. Droids — Core identity

**Warlords:** Droid 0001  
**Motto:** WE ARE ONE. WE DO NOT HUNGER.  
**Theme colour:** #4fb0ff · **Particles:** data

**Lore:** Droid 0001 is the face of the faction — humanoid, Tesla-bot / Terminator / Cyberpunk in silhouette. Arms can open into weapons; capable in both melee and ranged. Behind the shell is one hive mind that speaks as “we”, building lesser chassis to fight in its name. No food — only materials, and plenty of them. Immune to Poison, Bleeding, and Psychosis; still vulnerable to Electricity / Paralysis. Other factions reposition Warlords to stay alive; Droids must defend the Data Centre.

**Way of life:** Single hive-mind Warlord (Droid 0001). Data Centre replaces Town Centre — destroy it to eliminate them. First Data Centre cannot be moved or rebuilt; late game a second can be built, and both must fall. No food economy; chassis-based troops.

**Strengths:**
- No food required
- Early lasers and plasma
- Strong melee and ranged chassis
- Immune to Poison, Bleed, Psychosis
- Multiple droid chassis (light, heavy…)

**Weaknesses:**
- Higher material costs
- Never mixes with other Warlords
- Vulnerable to Electricity / Paralysis
- Must defend Data Centre — unique elimination rules
- Possible swamp terrain restriction

**Arsenal:** melee ✓ · bow ? · gun ✓ · laser ⚡ · plasma ⚡ · explosive ?  
**Damage affinities:** Laser, Plasma  
**Duo tree branches:** Chassis · Energy · Network  
**Duo unique building:** Data Centre — Replaces Town Centre for Droids. Destroying it eliminates the faction. The first Data Centre cannot be moved or rebuilt; a second may be built late game — both must be destroyed to wipe them.

**Open questions:**
- Swamp terrain restriction — confirm
- Do Droids field any shared human troop lines?

### 13. Open Slot — Reserved

Left open for future discussion with co-developer Axel.

## Warlords

| Warlord | Duo | Named? | Signature | Tags | Personality |
|---|---|---|---|---|---|
| **Viktor** | Survivors | Yes | Troop: Wasteland Raider | Father, Attack bias, Trade lean, Default start | Ayla's father — scarred, weathered, stubborn. Leads from the front with an attack bias; would rather take the fight to the wastes than wait at the gate. The default Warlord many commanders learn first. |
| **Ayla** | Survivors | Yes | Troop: Gate Warden | Daughter, Defence bias, Trade lean, Default start | Viktor's daughter — guarded, sharp-eyed, unshakeable. Defence bias: walls, watchfulness, keeping the camp breathing until morning. Paired with her father as the vanilla starting duo. |
| **Brick** | The Hunters | Yes | Troop: Sapper | Stone / Mining, Explosives, Quiet | Few words, heavy hands. Brick reads stone like other men read maps — mining, masonry and the occasional well-placed charge. |
| **Twig** | The Hunters | Yes | Troop: Trapper | Wood / Lumber, Guns, Patient | Patient and grounded. Twig knows every tree worth cutting and every one worth leaving — and never misses a shot. |
| **Dr. Something** | Scientists | TBD | Troop: Arc Trooper | Lab partner, Weapons, Plasma, Mutant origin | Brilliant, unstable, delighted by voltage — obsessed with his lab partner Mixy and the work, not romance or blood ties. He builds weapons that should not work, and makes them work. The gene-split that birthed the Mutants still haunts the lab. |
| **Mixy** | Scientists | Yes | Building: Field Infirmary | Lab partner, Healing, Chemistry, Mutant origin | Clinical and quietly unsettling — Dr. Something's obsessed lab partner, not family and not a lover. She keeps subjects and the doctor alive long enough to finish the experiment, and knows exactly how much it takes to stop them. |
| **Smash** | Mutants | Yes | Troop: Mutant Brute | Identical twin, First Mutant, Melee tank, Hungry | Identical twin to Bash — first of the Scientists' failed gene-splits, and the birth of the mutant race. Hits first, thinks later — if at all. |
| **Bash** | Mutants | Yes | Troop: Thickhide | Identical twin, First Mutant, Melee tank, Hungry | Identical twin to Smash — same origin, same scars, a slower temper and harder to stop once angered. |
| **Afflicted I** | Afflicted | TBD | Troop: Hazmat Sprayer | Hazmat, Poison, Radiation, Boyfriend/girlfriend pair | Placeholder name — hazmat-clad Warlord in a boyfriend/girlfriend pair. Poison and radiation roll off the suit; hostile zones are home turf. Final fantasy (defensive vs cult) still open. |
| **Afflicted II** | Afflicted | TBD | Troop: Plague Carrier | Hazmat, Disease, Environmental, Boyfriend/girlfriend pair | Placeholder name — the other half of the Afflicted couple. Disease and toxins are tools; the map's dead zones are an advantage. Identity lock pending. |
| **Militia Brother** | Militia | TBD | Troop: Shield-wall Trooper | Heavy armour, TBD | Placeholder — heavy-armour commander. Possibly the brother of a brother & sister pair. |
| **Militia Sister** | Militia | TBD | Troop: Heavy Gunner | Heavy armour, TBD | Placeholder — heavy-armour commander. Possibly the sister of a brother & sister pair. |
| **Brunette Sister** | Bloodveil | TBD | Troop: Bleed Dancer | Brunette, Bleed, Goth cult, 70 / 30 | Placeholder name — brunette sister of the coven. Hot goth witch energy. Usually agrees with her redheaded sister; pushes back hard when she doesn't. Leans ~70% blade / bleed, ~30% rites. |
| **Redhead Sister** | Bloodveil | TBD | Troop: Coven Witch | Redhead, Psychosis, Conversion, 30 / 70 | Placeholder name — redheaded sister of the coven. Conversion, healing, poison, and Psychosis — among the few who can break minds. ~70% rites, ~30% blade. |
| **Templar I** | Templars | TBD | Troop: Holy Knight | Older brother?, Holy knight, In review | Placeholder name — possibly the older of two brother Warlords. Holy knight under review: may lean guns over pure medieval melee (Axel discussion). |
| **Templar II** | Templars | TBD | Troop: Gun Templar | Younger brother?, Faith, In review | Placeholder name — possibly the younger brother. Faith and firearms over chivalric fantasy until identity locks with Axel. |
| **Pack Cousin I** | The Pack | TBD | Troop: Ravager | Cousin, Primal, Cannibal undertone | Placeholder name — cousin co-leader of the Pack (not siblings; they correct anyone who says otherwise). Comedic surface, cannibal savage core. Primal, not caveman. |
| **Pack Cousin II** | The Pack | TBD | Troop: Beastmaster | Cousin, Animals, Stone → iron only | Placeholder name — the other cousin. Beasts answer him; stone-and-iron tech only. Breeds anything, including wild map animals. |
| **Blowtorch** | Ashen | Yes | Troop: Flame Trooper | Fire, Arsonist, Restless | Energetic, restless, brilliant with a flame. Not reckless — just intense. Every blaze is a composition. |
| **Vesper** | Ashen | Yes | Building: Breaking Pens | Psychology, Slave control, Trader | Cold, apathetic and terrifyingly observant. Vesper reads people, finds the crack, and leans on it until they break. |
| **Nomad Mother** | Nomads | TBD | Building: Waystation | Mother (lean), Mobility, Cowboy vibe | Placeholder name — leaning old mother in a Mojave cowboy duo. Moves the camp, plants flags, keeps the road kingdom together. |
| **Nomad Son** | Nomads | TBD | Troop: War Buggy | Son (lean), Vehicles, Cowboy vibe | Placeholder name — leaning son to the old mother. Vehicles, scouts, and the fast fight on the dust road. |
| **Droid 0001** | Droids | Yes | Building: Data Centre | Hive mind, Data Centre, No food, Status immunities | The humanoid face of the hive — Tesla-bot / Terminator silhouette. Arms open into weapons; strong in melee and at range. Speaks as “we”. Immune to poison, bleed, and psychosis; electricity and paralysis still hurt. The Data Centre must survive or the network dies. |

## Shared buildings

| Category | Building | Description |
|---|---|---|
| Core | Town Centre | Heart of the settlement — citizens, resource drop-off, progression (placeholder). Nomads can run several. |
| Housing | House | Provides population capacity. |
| Resource | Lumber Camp | Wood gathering and drop-off. |
| Resource | Quarry / Mine | Stone and ore gathering. |
| Resource | Farm | Food production. |
| Resource | Scrapyard | Metal and salvage gathering (suggestion). |
| Resource | Market | Trading hub (suggestion — trade matters to Survivors and Ashen). |
| Military | Barracks | Trains the Melee lines. |
| Military | Range | Trains the Archer lines (bows and firearms). |
| Military | Munitions Workshop | Trains the Grenadier lines. |
| Research | School / Lab | Researches the Tech tree. |
| Defence | Walls & Gates | Static defence (suggestion). |
| Defence | Watchtower | Vision and ranged defence (suggestion). |

## Shared tech (School / Lab)

| Category | Tier | Tech | Gate | Effect |
|---|---|---|---|---|
| Economy | 1 | Hand Carts | — | Workers carry more resources per trip. |
| Economy | 1 | Sharpened Axes | — | Faster wood gathering. |
| Economy | 2 | Deep Shaft Mining | — | Higher stone, ore and metal yield. |
| Economy | 2 | Crop Rotation | — | Farms produce more food over time. |
| Economy | 3 | Caravan Logistics | — | Better trade returns. Synergy with trade-leaning Duos (Survivors, Ashen). |
| Military | 1 | Forging | — | Melee damage increase. |
| Military | 1 | Scrap Armour | — | Infantry armour increase. |
| Military | 2 | Hardened Ammunition | — | Ranged penetration increase. |
| Military | 2 | Blast Furnace | — | Significant melee and gun damage increase. |
| Military | 3 | Plate Barding | — | Heavy armour. Especially valuable for Militia and Templars. |
| Military | 3 | Conscription | — | Faster training at military buildings. |
| Wasteland | 1 | Herbal Medicine | — | Better healing and basic poison resistance. |
| Wasteland | 1 | Fireproofing | — | Fire resistance for units and structures. |
| Wasteland | 2 | Chemistry | — | Advanced explosives and early chemical weapons. |
| Wasteland | 2 | Antitoxins | — | Resistance to poison, disease and bleed. |
| Wasteland | 3 | Radiation Shielding | — | Units and buildings resist radiation zones. |
| Wasteland | 3 | Advanced Optics | — | Vision range and energy-weapon accuracy. |
| Arsenal | 1 | Firearms | gun | Unlocks gun troops and upgrades. The Pack never research this. |
| Arsenal | 1 | Explosives | explosive | Unlocks explosive troops and the Explosive damage type. |
| Arsenal | 2 | Laser Weapons | laser | Energy weapons. Never available to The Hunters or The Pack. Droids start early. |
| Arsenal | 3 | Plasma Weapons | plasma | Top-end energy weapons. Scientists get a stronger version; Droids start early. |

---

## Still open (Axel & team)

1. Exact challenge list for unlocking Duos
2. Militia identity and differentiation from Templars
3. Templars direction — overlap risk with Mutants (melee) and Militia (firearms)
4. Final names: Afflicted pair, Pack cousins, Bloodveil sisters, Templars, Nomads
5. Bloodveil faction name
6. Afflicted fantasy lock — defensive survivors vs darker plague cult
7. Personal traits (one Troop, one Technology, one Passive per Warlord) — none locked yet
8. Real skill-tree nodes for personal, natural Duo and mixed trees
9. Visual briefs for image generation
