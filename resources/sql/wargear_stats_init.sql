DROP TABLE wargear_stats;

CREATE TABLE wargear_stats (
    id INTEGER PRIMARY KEY,
    wargearID INTEGER,
    profile TEXT,
    range TEXT,
    type TEXT,
    strength TEXT,
    armorPen INTEGER,
    damage TEXT,
    abilities TEXT
);

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, null, "24", "Heavy D3", "10", -4, "D6",  "-"
FROM wargear
WHERE wargear.name = "Death ray";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Low power", "36", "Heavy D6", "8", -2, "D3",  "-"
FROM wargear
WHERE wargear.name = "Doomsday cannon";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "High power", "72", "Heavy D6", "10", -5, "D6", "A model can only fire the doomsday cannon at high power if it remained stationary in its preceeding movement phase."
FROM wargear
WHERE wargear.name = "Doomsday cannon";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "(shooting)", "36", "Assault 1", "8", -4, "D6",  "-"
FROM wargear
WHERE wargear.name = "Eldritch Lance";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "(melee)", "Melee", "Melee", "User", -2, "1",  "-"
FROM wargear
WHERE wargear.name = "Eldritch Lance";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, null, "8", "Assault D6", "4", 0, "1",  "This weapon automatically hits its target."
FROM wargear
WHERE wargear.name = "Gauntlet of fire";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Gauss blaster", "24", "Rapid Fire 1", "5", -2, "1", "-"
FROM wargear
WHERE wargear.name = "Gauss blaster";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Gauss cannon", "24", "Heavy 3", "6", -3, "D3", "-"
FROM wargear
WHERE wargear.name = "Gauss cannon";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Gauss flayer", "24", "Rapid Fire 1", "4", -1, "1", "-"
FROM wargear
WHERE wargear.name = "Gauss flayer";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Gauss flayer array", "24", "Rapid Fire 5", "4", -1, "1", "-"
FROM wargear
WHERE wargear.name = "Gauss flayer array";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Gauss flux arc", "24", "Heavy 3", "5", -2, "1", "-"
FROM wargear
WHERE wargear.name = "Gauss flux arc";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Gaze of death", "12", "Assault D6", "*", -4, "D3", "This weapon wounds on a 2+, unless it is targeting a VEHICLE unit, in which case it wounds on a 6+."
FROM wargear
WHERE wargear.name = "Gaze of death";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Dispersed", "8", "Heavy 2D6", "5", -1, "1", "When you use this profile, this weapon automatically hits its target."
FROM wargear
WHERE wargear.name = "Heat ray";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Focused", "24", "Heavy 2", "8", -4, "D6", "When you use this profile, if the target is within half range, roll two dice when inflicting damage with it and discard the lowest result."
FROM wargear
WHERE wargear.name = "Heat ray";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Heavy gauss cannon", "36", "Heavy 1", "9", -4, "D4", "-"
FROM wargear
WHERE wargear.name = "Heavy gauss cannon";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Particle beamer", "24", "Assault 3", "6", 0, "1", "-"
FROM wargear
WHERE wargear.name = "Particle beamer";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Particle caster", "12", "Pistol 1", "6", 0, "1", "-"
FROM wargear
WHERE wargear.name = "Particle caster";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Particle shredder", "24", "Heavy 6", "7", -1, "D3", "-"
FROM wargear
WHERE wargear.name = "Particle shredder";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Particle whip", "24", "Heavy 6", "8", -2, "D3", "-"
FROM wargear
WHERE wargear.name = "Particle whip";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "(shooting)", "12", "Assault 1", "5", -3, "1", "-"
FROM wargear
WHERE wargear.name = "Rod of conenant";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "(melee)", "Melee", "Melee", "User", -3, "1", "-"
FROM wargear
WHERE wargear.name = "Rod of covenant";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "(shooting)", "12", "Assault 3", "5", -2, "1", "-"
FROM wargear
WHERE wargear.name = "Staff of light";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "(melee)", "Melee", "Melee", "User", -2, "1", "-"
FROM wargear
WHERE wargear.name = "Staff of light";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "(shooting)", "18", "Assault 3", "6", -3, "2", "-"
FROM wargear
WHERE wargear.name = "Staff of the Destroyer";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "(melee)", "Melee", "Melee", "+1", -3, "2", "-"
FROM wargear
WHERE wargear.name = "Staff of the Destroyer";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Synaptic disintegrator", "24", "Rapid Fire 1", "4", 0, "1", "This weapon may target a CHARACTER even if it is not the closest enemy unit. Each time you roll a wound roll of 6+ for this weapon, the target suffers a mortal wound in addition to any other damage."
FROM wargear
WHERE wargear.name = "Synaptic disintegrator";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Tachyon arrow", "120", "Assault 1", "10", -5, "D6", "This weapon can only be used once per battle."
FROM wargear
WHERE wargear.name = "Tachyon arrow";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Tesla cannon", "24", "Assault 3", "6", 0, "1", "Each hit roll of 6+ with this weapon causes 3 hits instead of 1."
FROM wargear
WHERE wargear.name = "Tesla cannon";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Tesla carbine", "24", "Assault 2", "5", 0, "1", "Each hit roll of 6+ with this weapon causes 3 hits instead of 1."
FROM wargear
WHERE wargear.name = "Tesla carbine";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Tesla destructor", "24", "Assault 4", "7", 0, "1", "Each hit roll of 6+ with this weapon causes 3 hits instead of 1."
FROM wargear
WHERE wargear.name = "Tesla destructor";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Tesla sphere", "24", "Assault 5", "7", 0, "1", "Each hit roll of 6+ with this weapon causes 3 hits instead of 1."
FROM wargear
WHERE wargear.name = "Tesla sphere";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Transdimensional beamer", "12", "Heavy D3", "4", -3, "D6", "Each time you roll a wound roll of 6+ for this weapon, the target suffers a mortal wound in addition to any other damage."
FROM wargear
WHERE wargear.name = "Transdimensional beamer";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Twin heavy gauss cannon", "36", "Heavy 2", "9", -4, "D6", "-"
FROM wargear
WHERE wargear.name = "Twin heavy gauss cannon";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Twin tesla destructor", "24", "Assault 8", "7", 0, "1", "Each hit roll of 6+ with this weapon causes 3 hits instead of 1."
FROM wargear
WHERE wargear.name = "Twin tesla destructor";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Automation claws", "Melee", "Melee", "User", -2, "D3", "-"
FROM wargear
WHERE wargear.name = "Automation claws";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Crackling tendrils", "Melee", "Melee", "User", -4, "D6", "-"
FROM wargear
WHERE wargear.name = "Crackling tendrils";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Empathic Obliterator", "Melee", "Melee", "+2", -1, "D3", "If a CHARACTER is slain by an attack from this weapon, each enemy unit within 6+ of the slain character suffers D3 mortal wounds."
FROM wargear
WHERE wargear.name = "Automation claws";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Feeder mandibles", "Melee", "Melee", "User", 0, "1", "If a target's Toughness is higher than this attack's Strength, this weapon always wounds the target on a wound roll of 5+."
FROM wargear
WHERE wargear.name = "Feeder mandibles";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Flayer claws", "Melee", "Melee", "User", 0, "1", "You can re-roll failed wound rolls for this weapon."
FROM wargear
WHERE wargear.name = "Flayer claws";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Hyperphase sword", "Melee", "Melee", "+1", -3, "1", "-"
FROM wargear
WHERE wargear.name = "Hyperphase sword";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Massive forelimbs", "Melee", "Melee", "User", -1, "D3", "-"
FROM wargear
WHERE wargear.name = "Massive forelimbs";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Scythe of the Nightbringer", "Melee", "Melee", "*", -4, "D6", "This weapon wounds on a 2+, unless it is targeting a VEHICLE unit, in which case it has a Strength characteristic of 7."
FROM wargear
WHERE wargear.name = "Scythe of the Nightbringer";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Staff of Tomorrow", "Melee", "Melee", "User", -3, "D3", "You can re-roll failed hit rolls for this weapon."
FROM wargear
WHERE wargear.name = "Staff of Tomorrow";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Star-god fists", "Melee", "Melee", "User", -4, "3", "-"
FROM wargear
WHERE wargear.name = "Star-god fists";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Vicious claws", "Melee", "Melee", "User", -2, "2", "-"
FROM wargear
WHERE wargear.name = "Vicious claws";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Voidblade", "Melee", "Melee", "User", -3, "1", "Each time the bearer fights, it can make 1 additional attack with this weapon."
FROM wargear
WHERE wargear.name = "Voidblade";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Voidscythe", "Melee", "Melee", "x2", -4, "3", "When attacking with this weapon, subtract 1 from the hit roll."
FROM wargear
WHERE wargear.name = "Voidscythe";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Warscythe", "Melee", "Melee", "+2", -4, "2", "-"
FROM wargear
WHERE wargear.name = "Warscythe";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Whip coils", "Melee", "Melee", "User", -2, "2", "If the bearer is slain in the Fight phase before it has made its attacks, leave the model where it is. When its unit is chosen to fight in that phase, it can do so as normal. Once it has done so, remove the model from the battlefield."
FROM wargear
WHERE wargear.name = "Whip coils";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Canoptek Cloak", null, null, null, null, null, 'A model equipped with a Canoptek cloak has a Move characteristic of 10" and gains the FLY keyword. In addition, at the start of your turn you can select one friendly <DYNASTY> model that has the Living Metal ability and that is within 3" of this model. That model regains D3 lost wounds, rather than 1, from its Living Metal ability.'
FROM wargear
WHERE wargear.name = "Canoptek Cloak";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Chronometron", null, null, null, null, null, '<DYNASTY> INFANTRY units within 3" of a friendly <DYNASTY> model with a chronometron have a 5+
invulnerable save against ranged weapons.'
FROM wargear
WHERE wargear.name = "Chronometron";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Dispersion Shield", null, null, null, null, null, "A model equipped with a dispersion shield has a 4+ invulnerable save."
FROM wargear
WHERE wargear.name = "Dispersion Shield";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Fabricator Claw Array", null, null, null, null, null, 'At the end of your Movement phase a model equipped with a fabricator claw array can repair a single <DYNASTY> VEHICLE model within 1". That model regains D3 wounds lost earlier in the battle. A model can only be repaired once per turn.'
FROM wargear
WHERE wargear.name = "Fabricator Claw Array";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Gloom Prism", null, null, null, null, null, 'A model equipped with a gloom prism can attempt to deny one psychic power in each enemy Psychic phase in the same manner as a PSYKER.'
FROM wargear
WHERE wargear.name = "Gloom Prism";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Nebuloscope", null, null, null, null, null, "Models do not receive the bonus to their save for being in cover against attacks made be a model with a nebuloscope."
FROM wargear
WHERE wargear.name = "Nebuloscope";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Phylactery", null, null, null, null, null, "A model with a phylactery regains D3 lost wounds at the beginning of your turn, rather than 1, from their Living Metal ability."
FROM wargear
WHERE wargear.name = "Phylactery";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Resurrection Orb", null, null, null, null, null, 'If a model has a resurrection orb, once per battle, immediately after you have made your Reanimation Protocols rolls at the beginning of the turn, you can make Reanimation Protocols rolls for models from a friendly <DYNASTY> INFANTRY unit within 3" of that model.'
FROM wargear
WHERE wargear.name = "Resurrection Orb";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Shadowloom", null, null, null, null, null, "A model with a shadowloom has a 5+ invulnerable save."
FROM wargear
WHERE wargear.name = "Shadowloom";

INSERT INTO wargear_stats (
    id,
    wargearID,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    abilities
)
SELECT null, wargear.id, "Shieldvanes", null, null, null, null, null, "A model with shieldvanes has a Save characteristic of 3+."
FROM wargear
WHERE wargear.name = "Shieldvanes";