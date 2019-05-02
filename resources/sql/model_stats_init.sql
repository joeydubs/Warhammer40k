DROP TABLE model_stats;

CREATE TABLE model_stats (
    id INTEGER,
    damage TEXT,
    move INTEGER,
    weapon INTEGER,
    ballistic INTEGER,
    strength INTEGER,
    toughness INTEGER,
    wounds INTEGER,
    attacks TEXT,
    leadership INTEGER,
    save INTEGER,
    points INTEGER,
    FOREIGN KEY (id) REFERENCES models(id)
);

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, NULL, 5, 2, 2, 5, 5, 5, "3", 10, 3, NULL
FROM models WHERE name = "Overlord";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, NULL, 5, 3, 3, 4, 4, 1, "1", 10, 4, NULL
FROM models WHERE name = "Necron Warrior";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, NULL, 5, 3, 3, 4, 4, 1, "1", 10, 3, NULL
FROM models WHERE name = "Immortal";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, NULL, 5, 3, 3, 5, 5, 2, "2", 10, 3, NULL
FROM models WHERE name = "Lychguard";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, NULL, 5, 3, 3, 4, 4, 1, "1", 10, 3, NULL
FROM models WHERE name = "Deathmarks";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, "6-10", 10, 3, 3, 7, 6, 10, "3", 10, 3, NULL
FROM models WHERE name = "Triarch Stalker";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, "3-5", 8, 4, 4, 7, 6, 10, "3", 10, 3, NULL
FROM models WHERE name = "Triarch Stalker";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, "1-2", 6, 5, 5, 7, 6, 10, "3", 10, 3, NULL
FROM models WHERE name = "Triarch Stalker";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, NULL, 8, 2, 2, 7, 7, 8, "4", 10, 4, NULL
FROM models WHERE name = "C'tan Shard of the Nightbringer";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, NULL, 12, 3, 3, 6, 5, 3, "3", 10, 4, NULL
FROM models WHERE name = "Canoptek Wraith";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, NULL, 10, 4, 0, 3, 3, 3, "4", 10, 6, NULL
FROM models WHERE name = "Canoptek Scarab Swarm";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, NULL, 6, 4, 4, 6, 6, 4, "4", 10, 3, NULL
FROM models WHERE name = "Canoptek Spyders";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, "11-20", 6, 6, 3, 8, 8, 20, "3", 10, 3, NULL
FROM models WHERE name = "Monolith";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, "6-10", 5, 6, 4, 8, 8, 20, "3", 10, 3, NULL
FROM models WHERE name = "Monolith";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, "1-5", 4, 6, 5, 8, 8, 20, "3", 10, 3, NULL
FROM models WHERE name = "Monolith";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, "8-14", 12, 6, 3, 6, 6, 14, "3", 10, 4, NULL
FROM models WHERE name = "Doomsday Ark";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, "4-7", 8, 6, 4, 6, 6, 14, "D3", 10, 4, NULL
FROM models WHERE name = "Doomsday Ark";

INSERT INTO model_stats (
    id,
    damage,
    move,
    weapon,
    ballistic,
    strength,
    toughness,
    wounds,
    attacks,
    leadership,
    save,
    points
)
SELECT
id, "1-3", 4, 6, 5, 6, 6, 14, "1", 10, 4, NULL
FROM models WHERE name = "Doomsday Ark";