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

