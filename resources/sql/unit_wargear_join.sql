DROP TABLE unit_wargear_join;

CREATE TABLE unit_wargear_join (
    unit INTEGER,
    wargear INTEGER
);

INSERT INTO unit_wargear_join (
    unit,
    wargear
)
SELECT units.id, wargear.id
FROM units, wargear
WHERE units.name = "Overlord"
AND wargear.name = "Staff of light";

INSERT INTO unit_wargear_join (
    unit,
    wargear
)
SELECT units.id, wargear.id
FROM units, wargear
WHERE units.name = "Overlord"
AND wargear.name = "Resurrection Orb";

INSERT INTO unit_wargear_join (
    unit,
    wargear
)
SELECT units.id, wargear.id
FROM units, wargear
WHERE units.name = "Necron Warriors"
AND wargear.name = "Gauss flayer";

INSERT INTO unit_wargear_join (
    unit,
    wargear
)
SELECT units.id, wargear.id
FROM units, wargear
WHERE units.name = "Immortals"
AND wargear.name = "Gauss blaster";

INSERT INTO unit_wargear_join (
    unit,
    wargear
)
SELECT units.id, wargear.id
FROM units, wargear
WHERE units.name = "Immortals"
AND wargear.name = "Tesla carbine";

