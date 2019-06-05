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

