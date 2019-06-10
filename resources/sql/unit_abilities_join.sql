DROP TABLE unit_abilities_join;

CREATE TABLE unit_abilities_join (
    unitID INTEGER,
    abilityID INTEGER
);

INSERT INTO unit_abilities_join (
    unitID,
    abilityID
)
SELECT units.id, abilities.id
FROM units, abilities
WHERE units.name = "Overlord"
AND abilities.name = "Living Metal";

INSERT INTO unit_abilities_join (
    unitID,
    abilityID
)
SELECT units.id, abilities.id
FROM units, abilities
WHERE units.name = "Overlord"
AND abilities.name = "My Will Be Done";

INSERT INTO unit_abilities_join (
    unitID,
    abilityID
)
SELECT units.id, abilities.id
FROM units, abilities
WHERE units.name = "Overlord"
AND abilities.name = "Phase Shifter";


INSERT INTO unit_abilities_join (
    unitID,
    abilityID
)
SELECT units.id, abilities.id
FROM units, abilities
WHERE units.name = "Necron Warriors"
AND abilities.name = "Reanimation Protocols";

INSERT INTO unit_abilities_join (
    unitID,
    abilityID
)
SELECT units.id, abilities.id
FROM units, abilities
WHERE units.name = "Monolith"
AND abilities.name = "Explodes";

INSERT INTO unit_abilities_join (
    unitID,
    abilityID
)
SELECT units.id, abilities.id
FROM units, abilities
WHERE units.name = "Monolith"
AND abilities.name = "Hovering";

INSERT INTO unit_abilities_join (
    unitID,
    abilityID
)
SELECT units.id, abilities.id
FROM units, abilities
WHERE units.name = "Monolith"
AND abilities.name = "Living Metal";

