DROP TABLE wargear;

CREATE TABLE wargear
(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    flavor TEXT,
    description TEXT,
    points INTEGER,
    weapon BOOLEAN,
    faction TEXT
);

INSERT INTO wargear
VALUES
    (
        null,
        "Staff of light",
        null,
        null,
        null,
        true,
        "Necrons"
);
INSERT INTO wargear
VALUES
    (
        null,
        "Doomsday cannon",
        null,
        null,
        null,
        true,
        "Necrons"
);
INSERT INTO wargear
VALUES
    (
        null,
        "Gauss blaster",
        null,
        null,
        null,
        true,
        "Necrons"
);
INSERT INTO wargear
VALUES
    (
        null,
        "Gauss flayer",
        null,
        null,
        null,
        true,
        "Necrons"
);
INSERT INTO wargear
VALUES
    (
        null,
        "Gauss flayer array",
        null,
        null,
        null,
        true,
        "Necrons"
);
INSERT INTO wargear
VALUES
    (
        null,
        "Resurrection Orb",
        null,
        null,
        null,
        false,
        "Necrons"
);