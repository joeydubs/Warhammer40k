DROP TABLE wargear_stats;

CREATE TABLE wargear_stats (
    id INTEGER,
    profile TEXT,
    range TEXT,
    type TEXT,
    strength TEXT,
    armorPen INTEGER,
    damage TEXT,
    ability TEXT,
    FOREIGN KEY (id) REFERENCES wargear(id)
);

INSERT INTO wargear_stats (
    id,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    ability
)
SELECT id, "Shooting", "12", "Assault 3", "5", -2, "1", "-"
 FROM wargear WHERE name = "Staff of light";

INSERT INTO wargear_stats (
    id,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    ability
)
SELECT id, "Melee", "Melee", "Melee", "User", -2, "1", "-"
 FROM wargear WHERE name = "Staff of light";

INSERT INTO wargear_stats (
    id,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    ability
)
SELECT id, "Low power", "36", "Heavy D6", "8", -2, "D3", "-"
 FROM wargear WHERE name = "Doomsday cannon";

INSERT INTO wargear_stats (
    id,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    ability
)
SELECT id, "High power", "72", "Heavy D6", "10", -5, "D6", "A model can only fire the doomsday cannon at high power if it remained stationary in its preceeding movement phase."
 FROM wargear WHERE name="Doomsday cannon";

INSERT INTO wargear_stats (
    id,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    ability
)
SELECT id, "Gauss blaster", "24", "Rapid Fire 1", "5", -2, "1", "-"
 FROM wargear WHERE name="Gauss blaster";

INSERT INTO wargear_stats (
    id,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    ability
)
SELECT id, "Gauss flayer", "24", "Rapid Fire 1", "4", -1, "1", "-"
 FROM wargear WHERE name="Gauss flayer";

INSERT INTO wargear_stats (
    id,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    ability
)
SELECT id, "Gauss flayer array", "24", "Rapid Fire 5", "4", -1, "1", "-"
 FROM wargear WHERE name="Gauss flayer array";

INSERT INTO wargear_stats (
    id,
    profile,
    range,
    type,
    strength,
    armorPen,
    damage,
    ability
)
SELECT id, "Resurrection Orb", null, null, null, null, null, 'If a model has a resurrection orb, once per battle, immediately after you have made your Reanimation Protocols rolls at the beginning of the turn, you can make Reanimation Protocols rolls for models from a friendly <DYNASTY> INFANTRY unit within 3" of that model.'
 FROM wargear WHERE name="Resurrection Orb";