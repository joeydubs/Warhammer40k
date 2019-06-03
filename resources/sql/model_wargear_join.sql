DROP TABLE model_wargear_join;

CREATE TABLE model_wargear_join (
    model INTEGER,
    wargear INTEGER
);

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Overlord"
AND wargear.name = "Staff of light";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Overlord"
AND wargear.name = "Hyperphase sword";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Overlord"
AND wargear.name = "Voidblade";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Overlord"
AND wargear.name = "Voidscythe";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Overlord"
AND wargear.name = "Warscythe";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Overlord"
AND wargear.name = "Resurrection Orb";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Necron Warrior"
AND wargear.name = "Gauss flayer";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Immortal"
AND wargear.name = "Gauss blaster";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Immortal"
AND wargear.name = "Tesla carbine";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Destroyer"
AND wargear.name = "Gauss cannon";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Heavy Destroyer"
AND wargear.name = "Heavy gauss cannon";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Triarch Stalker"
AND wargear.name = "Heat ray";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Triarch Stalker"
AND wargear.name = "Particle Shredder";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Triarch Stalker"
AND wargear.name = "Twin heavy gauss cannon";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Triarch Stalker"
AND wargear.name = "Massive forelimbs";

