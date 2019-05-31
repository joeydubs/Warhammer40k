DROP TABLE model_unit_join;

CREATE TABLE model_unit_join (
    model INTEGER,
    unit INTEGER,
    min INTEGER,
    max INTEGER
);

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Overlord"
AND units.name = "Overlord";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 10, 20
FROM models, units
WHERE models.name = "Necron Warrior"
AND units.name = "Necron Warriors";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 5, 10
FROM models, units
WHERE models.name = "Immortal"
AND units.name = "Immortals";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 5, 10
FROM models, units
WHERE models.name = "Lychguard"
AND units.name = "Lychguard";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 5, 10
FROM models, units
WHERE models.name = "Deathmarks"
AND units.name = "Deathmarks";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Triarch Stalker"
AND units.name = "Triarch Stalker";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "C'tan Shard of the Nightbringer"
AND units.name = "C'tan Shard of the Nightbringer";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 3, 6
FROM models, units
WHERE models.name = "Canoptek Wraith"
AND units.name = "Canoptek Wraiths";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 3, 9
FROM models, units
WHERE models.name = "Canoptek Scarab Swarm"
AND units.name = "Canoptek Scarabs";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 6
FROM models, units
WHERE models.name = "Destroyer"
AND units.name = "Destroyers";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 0, 1
FROM models, units
WHERE models.name = "Heavy Destroyer"
AND units.name = "Destroyers";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 3
FROM models, units
WHERE models.name = "Heavy Destroyer"
AND units.name = "Heavy Destroyers";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 3
FROM models, units
WHERE models.name = "Canoptek Spyders"
AND units.name = "Canoptek Spyders";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Monolith"
AND units.name = "Monolith";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Doomsday Ark"
AND units.name = "Doomsday Ark";

