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
WHERE units.name = "Triarch Stalker"
AND faction_keywords.name = "Necrons";

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

