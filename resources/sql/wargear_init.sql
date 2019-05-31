DROP TABLE wargear;

CREATE TABLE wargear (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    flavor TEXT,
    description TEXT,
    points INTEGER,
    weapon BOOLEAN
);

INSERT INTO wargear
VALUES
    (
        null,
        "Staff of light",
        null,
        null,
        10,
        true
);
INSERT INTO wargear
VALUES
    (
        null,
        "Hyperphase sword",
        null,
        null,
        3,
        true
);
INSERT INTO wargear
VALUES
    (
        null,
        "Voidblade",
        null,
        null,
        6,
        true
);
INSERT INTO wargear
VALUES
    (
        null,
        "Voidscythe",
        null,
        null,
        20,
        true
);
INSERT INTO wargear
VALUES
    (
        null,
        "Warscythe",
        null,
        null,
        11,
        true
);
INSERT INTO wargear
VALUES
    (
        null,
        "Doomsday cannon",
        null,
        null,
        0,
        true
);
INSERT INTO wargear
VALUES
    (
        null,
        "Gauss blaster",
        null,
        null,
        9,
        true
);
INSERT INTO wargear
VALUES
    (
        null,
        "Tesla carbine",
        null,
        null,
        9,
        true
);
INSERT INTO wargear
VALUES
    (
        null,
        "Gauss flayer",
        null,
        null,
        0,
        true
);
INSERT INTO wargear
VALUES
    (
        null,
        "Gauss flayer array",
        null,
        null,
        0,
        true
);
INSERT INTO wargear
VALUES
    (
        null,
        "Resurrection Orb",
        null,
        null,
        35,
        false
);

INSERT INTO wargear
VALUES
    (
        null,
        "Gauss cannon",
        null,
        null,
        20,
        false
);

INSERT INTO wargear
VALUES
    (
        null,
        "Heavy gauss cannon",
        null,
        null,
        27,
        false
);
