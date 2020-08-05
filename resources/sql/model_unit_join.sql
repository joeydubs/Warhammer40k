DROP TABLE IF EXISTS model_unit_join;

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
WHERE models.name = "Imotekh the Stormlord"
AND units.name = "Imotekh the Stormlord";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Nemesor Zahndrekh"
AND units.name = "Nemesor Zahndrekh";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Vargard Obyron"
AND units.name = "Vargard Obyron";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Illuminor Szeras"
AND units.name = "Illuminor Szeras";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Orikan the Diviner"
AND units.name = "Orikan the Diviner";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Anrakyr the Traveller"
AND units.name = "Anrakyr the Traveller";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Trazyn the Infinite"
AND units.name = "Trazyn the Infinite";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Catacomb Command Barge"
AND units.name = "Catacomb Command Barge";

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
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Lord"
AND units.name = "Lord";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Cryptek"
AND units.name = "Cryptek";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Destroyer Lord"
AND units.name = "Destroyer Lord";

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
SELECT models.id, units.id, 5, 20
FROM models, units
WHERE models.name = "Flayed One"
AND units.name = "Flayed Ones";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 5, 10
FROM models, units
WHERE models.name = "Triarch Praetorian"
AND units.name = "Triarch Praetorians";

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
WHERE models.name = "C'tan Shard of the Deceiver"
AND units.name = "C'tan Shard of the Deceiver";

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
SELECT models.id, units.id, 3, 9
FROM models, units
WHERE models.name = "Tomb Blades"
AND units.name = "Tomb Blades";

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
WHERE models.name = "Annihilation Barge"
AND units.name = "Annihilation Barge";

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

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Transcendent C'tan"
AND units.name = "Transcendent C'tan";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Ghost Ark"
AND units.name = "Ghost Ark";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Doom Scythe"
AND units.name = "Doom Scythe";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Night Scythe"
AND units.name = "Night Scythe";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Obelisk"
AND units.name = "Obelisk";

INSERT INTO model_unit_join (
    model,
    unit,
    min,
    max
)
SELECT models.id, units.id, 1, 1
FROM models, units
WHERE models.name = "Tesseract Vault"
AND units.name = "Tesseract Vault";