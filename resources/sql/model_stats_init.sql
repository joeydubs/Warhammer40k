DROP TABLE model_stats;

CREATE TABLE model_stats (
    id INTEGER PRIMARY KEY,
    damage TEXT,
    move INTEGER,
    weapon INTEGER,
    ballistic INTEGER,
    strength INTEGER,
    toughness INTEGER,
    wounds INTEGER,
    attacks TEXT,
    leadership INTEGER,
    "save" INTEGER
);

-- overlord, 1
INSERT INTO model_stats VALUES (
    NULL,
    NULL,
    5,
    2,
    2,
    5,
    5,
    5,
    "3",
    10,
    3
);

-- necron warrior, 2
INSERT INTO model_stats VALUES (
    null,
    NULL,
    5,
    3,
    3,
    4,
    4,
    1,
    "1",
    10,
    4
);

-- immortal, 3
INSERT INTO model_stats VALUES (
    null,
    NULL,
    5,
    3,
    3,
    4,
    4,
    1,
    "1",
    10,
    3
);

-- lychguard, 4
INSERT INTO model_stats VALUES (
    null,
    NULL,
    5,
    3,
    3,
    5,
    5,
    2,
    "2",
    10,
    3
);

-- deathmarks, 5
INSERT INTO model_stats VALUES (
    null,
    NULL,
    5,
    3,
    3,
    4,
    4,
    1,
    "1",
    10,
    3
);

-- triarch stalker, 6
INSERT INTO model_stats VALUES (
    null,
    "6-10",
    10,
    3,
    3,
    7,
    6,
    10,
    "3",
    10,
    3
);

-- triarch stalker, 7
INSERT INTO model_stats VALUES (
    null,
    "3-5",
    8,
    4,
    4,
    null,
    null,
    null,
    null,
    null,
    null
);

-- triarch stalker, 8
INSERT INTO model_stats VALUES (
    null,
    "1-2",
    6,
    5,
    5,
    null,
    null,
    null,
    null,
    null,
    null
);

-- nightbringer, 9
INSERT INTO model_stats VALUES (
    null,
    NULL,
    8,
    2,
    2,
    7,
    7,
    8,
    "4",
    10,
    4
);

-- canoptek wraith, 10
INSERT INTO model_stats VALUES (
    null,
    NULL,
    12,
    3,
    3,
    6,
    5,
    3,
    "3",
    10,
    4
);

-- canoptek scarabs, 11
INSERT INTO model_stats VALUES (
    null,
    NULL,
    10,
    4,
    0,
    3,
    3,
    3,
    "4",
    10,
    6
);

-- canoptek spyder, 12
INSERT INTO model_stats VALUES (
    null,
    NULL,
    6,
    4,
    4,
    6,
    6,
    4,
    "4",
    10,
    3
);

-- monolith, 13
INSERT INTO model_stats VALUES (
    null,
    "11-20",
    6,
    6,
    3,
    8,
    8,
    20,
    "3",
    10,
    3
);

-- monolith, 14
INSERT INTO model_stats VALUES (
    null,
    "6-10",
    5,
    null,
    4,
    null,
    null,
    null,
    null,
    null,
    null
);

-- monolith, 15
INSERT INTO model_stats VALUES (
    null,
    "1-5",
    4,
    null,
    5,
    null,
    null,
    null,
    null,
    null,
    null
);

-- doomsday ark, 16
INSERT INTO model_stats VALUES (
    null,
    "8-14",
    12,
    null,
    3,
    null,
    null,
    null,
    "3",
    null,
    null
);

-- doomsday ark, 17
INSERT INTO model_stats VALUES (
    null,
    "4-7",
    8,
    null,
    4,
    null,
    null,
    null,
    "D3",
    null,
    null
);

-- doomsday ark, 18
INSERT INTO model_stats VALUES (
    null,
    "1-3",
    4,
    null,
    5,
    null,
    null,
    null,
    "1",
    null,
    null
);

-- destroyer, 19
INSERT INTO model_stats VALUES (
    null,
    null,
    10,
    3,
    3,
    4,
    5,
    3,
    "2",
    10,
    3
);

-- heavy destroyer, 20
INSERT INTO model_stats VALUES (
    null,
    null,
    10,
    3,
    3,
    4,
    5,
    3,
    "2",
    10,
    3
);

