DROP TABLE unit_faction_keywords_join;

CREATE TABLE unit_faction_keywords_join (
    unitID INTEGER,
    factionKeywordID INTEGER
);

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Imotekh the Stormlord"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Imotekh the Stormlord"
AND faction_keywords.name = "Sautekh";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Nemesor Zahndrekh"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Nemesor Zahndrekh"
AND faction_keywords.name = "Sautekh";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Vargard Obyron"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Vargard Obyron"
AND faction_keywords.name = "Sautekh";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Illuminor Szeras"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Orikan the Diviner"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Orikan the Diviner"
AND faction_keywords.name = "Sautekh";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Anrakyr the Traveller"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Trazyn the Infinite"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Trazyn the Infinite"
AND faction_keywords.name = "Nihilakh";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Catacomb Command Barge"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Catacomb Command Barge"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Overlord"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Overlord"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Lord"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Lord"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Cryptek"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Cryptek"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Destroyer Lord"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Destroyer Lord"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Necron Warriors"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Necron Warriors"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Immortals"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Immortals"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Lychguard"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Lychguard"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Deathmarks"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Deathmarks"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Flayed Ones"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Flayed Ones"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Triarch Praetorians"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Triarch Stalker"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "C'tan Shard of the Deceiver"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "C'tan Shard of the Deceiver"
AND faction_keywords.name = "C'tan Shards";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "C'tan Shard of the Nightbringer"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "C'tan Shard of the Nightbringer"
AND faction_keywords.name = "C'tan Shards";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Canoptek Wraiths"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Canoptek Wraiths"
AND faction_keywords.name = "Canoptek";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Canoptek Wraiths"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Canoptek Scarabs"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Canoptek Scarabs"
AND faction_keywords.name = "Canoptek";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Canoptek Scarabs"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Tomb Blades"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Tomb Blades"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Destroyers"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Destroyers"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Heavy Destroyers"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Heavy Destroyers"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Canoptek Spyders"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Canoptek Spyders"
AND faction_keywords.name = "Canoptek";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Canoptek Spyders"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Monolith"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Monolith"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Annihilation Barge"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Annihilation Barge"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Doomsday Ark"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Doomsday Ark"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Transcendent C'tan"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Transcendent C'tan"
AND faction_keywords.name = "C'tan Shards";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Ghost Ark"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Ghost Ark"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Doom Scythe"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Doom Scythe"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Night Scythe"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Night Scythe"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Obelisk"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Obelisk"
AND faction_keywords.name = "Dynasty";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Tesseract Vault"
AND faction_keywords.name = "Necrons";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Tesseract Vault"
AND faction_keywords.name = "C'tan Shards";

INSERT INTO unit_faction_keywords_join (
    unitID,
    factionKeywordID
)
SELECT units.id, faction_keywords.id
FROM units, faction_keywords
WHERE units.name = "Tesseract Vault"
AND faction_keywords.name = "Dynasty";