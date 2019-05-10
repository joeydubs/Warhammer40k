DROP TABLE wargear_stats;

CREATE TABLE wargear_stats (
    id INTEGER PRIMARY KEY,
    profile TEXT,
    range TEXT,
    type TEXT,
    strength TEXT,
    armorPen INTEGER,
    damage TEXT,
    ability TEXT
);

INSERT INTO wargear_stats
VALUES
    (
        null,
        "Shooting",
        "12",
        "Assault 3",
        "5",
        -2,
        "1",
        "-"
);

INSERT INTO wargear_stats VALUES (
    null,
    "Melee",
    "Melee",
    "Melee",
    "User",
    -2,
    "1",
    "-"
);

INSERT INTO wargear_stats VALUES (
    null,
    "Low power",
    "36",
    "Heavy D6",
    "8",
    -2,
    "D3",
    "-"
);

INSERT INTO wargear_stats VALUES (
    null,
    "High power",
    "72",
    "Heavy D6",
    "10",
    -5,
    "D6",
    "A model can only fire the doomsday cannon at high power if it remained stationary in its preceeding movement phase."
);

INSERT INTO wargear_stats VALUES (
    null,
    "Gauss blaster",
    "24",
    "Rapnull Fire 1",
    "5",
    -2,
    "1",
    "-"
);

INSERT INTO wargear_stats VALUES (
    null,
    "Gauss flayer",
    "24",
    "Rapnull Fire 1",
    "4",
    -1,
    "1",
    "-"
);

INSERT INTO wargear_stats VALUES (
    null,
    "Gauss flayer array",
    "24",
    "Rapnull Fire 5",
    "4",
    -1,
    "1",
    "-"
);

INSERT INTO wargear_stats VALUES (
    null,
    "Resurrection Orb",
    null,
    null,
    null,
    null,
    null,
    'If a model has a resurrection orb, once per battle, immediately after you have made your Reanimation Protocols rolls at the beginning of the turn, you can make Reanimation Protocols rolls for models from a friendly <DYNASTY> INFANTRY unit within 3" of that model.'
);