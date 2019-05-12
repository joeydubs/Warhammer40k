DROP TABLE units;

CREATE TABLE units (
    id INTEGER PRIMARY KEY,
    name TEXT,
    description TEXT,
    role TEXT,
    power INTEGER
);

INSERT INTO units VALUES (
    NULL,
    "Overlord",
    NULL,
    "HQ",
    6
);

INSERT INTO units VALUES (
    NULL,
    "Necron Warriors",
    NULL,
    "Troops",
    6
);

INSERT INTO units VALUES (
    NULL,
    "Immortals",
    NULL,
    "Troops",
    4
);

INSERT INTO units VALUES (
    NULL,
    "Lychguard",
    NULL,
    "Troops",
    8
);

INSERT INTO units VALUES (
    NULL,
    "Deathmarks",
    NULL,
    "Troops",
    5
);

INSERT INTO units VALUES (
    NULL,
    "Triarch Stalker",
    NULL,
    "Elites",
    8
);

INSERT INTO units VALUES (
    NULL,
    "C'tan Shard of the Nightbringer",
    NULL,
    "Elites",
    12
);

INSERT INTO units VALUES (
    NULL,
    "Canoptek Wraiths",
    NULL,
    "Fast Attack",
    9
);

INSERT INTO units VALUES (
    NULL,
    "Canoptek Scarabs",
    NULL,
    "Fast Attack",
    2
);

INSERT INTO units VALUES (
    NULL,
    "Canoptek Spyders",
    NULL,
    "Heavy Support",
    4
);

INSERT INTO units VALUES (
    NULL,
    "Monolith",
    NULL,
    "Heavy Support",
    19
);

INSERT INTO units VALUES (
    NULL,
    "Doomsday Ark",
    NULL,
    "Heavy Support",
    10
);