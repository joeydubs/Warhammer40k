DROP TABLE unit_keywords_join;

CREATE TABLE unit_keywords_join (
    unitID INTEGER,
    keywordID INTEGER
);

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Imotekh the Stormlord"
AND keywords.name = "Character";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Imotekh the Stormlord"
AND keywords.name = "Infantry";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Imotekh the Stormlord"
AND keywords.name = "Overlord";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Imotekh the Stormlord"
AND keywords.name = "Imotekh the Stormlord";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Overlord"
AND keywords.name = "Character";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Overlord"
AND keywords.name = "Infantry";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Overlord"
AND keywords.name = "Overlord";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Necron Warriors"
AND keywords.name = "Infantry";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Necron Warriors"
AND keywords.name = "Warriors";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Immortals"
AND keywords.name = "Infantry";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Immortals"
AND keywords.name = "Immortals";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Triarch Stalker"
AND keywords.name = "Vehicle";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Triarch Stalker"
AND keywords.name = "Triarch Stalker";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "C'tan Shard of the Nightbringer"
AND keywords.name = "Character";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "C'tan Shard of the Nightbringer"
AND keywords.name = "Monster";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "C'tan Shard of the Nightbringer"
AND keywords.name = "Fly";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "C'tan Shard of the Nightbringer"
AND keywords.name = "C'tan Shard of the Nightbringer";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Canoptek Wraiths"
AND keywords.name = "Beasts";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Canoptek Wraiths"
AND keywords.name = "Canoptek Wraiths";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Monolith"
AND keywords.name = "Vehicle";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Monolith"
AND keywords.name = "Titanic";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Monolith"
AND keywords.name = "Fly";

INSERT INTO unit_keywords_join (
    unitID,
    keywordID
)
SELECT units.id, keywords.id
FROM units, keywords
WHERE units.name = "Monolith"
AND keywords.name = "Monolith";

