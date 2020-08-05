DROP TABLE IF EXISTS stats;

CREATE TABLE stats
(
    id INTEGER PRIMARY KEY,
    modelID INTEGER,
    statName TEXT,
    move INTEGER,
    weapon INTEGER,
    ballistic INTEGER,
    strength INTEGER,
    toughness INTEGER,
    wounds INTEGER,
    attacks TEXT,
    leadership INTEGER,
    "save" INTEGER
);

-- Imotekh the Stormlord 5" 2+ 2+ 5 5 6 3 10 2+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 2, 2, 5, 5, 6, "3", 10, 2
FROM models
WHERE models.name = "Imotekh the Stormlord";

-- Nemesor Zahndrekh 5" 2+ 2+ 5 5 6 3 10 2+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 2, 2, 5, 5, 6, "3", 10, 2
FROM models
WHERE models.name = "Nemesor Zahndrekh";

-- Vargard Obyron 5" 2+ 3+ 5 5 6 4 10 2+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 2, 3, 5, 5, 6, "4", 10, 2
FROM models
WHERE models.name = "Vargard Obyron";

-- Illuminor Szeras 6" 3+ 3+ 4 4 5 4 10 3+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 6, 3, 3, 4, 4, 5, "4", 10, 3
FROM models
WHERE models.name = "Illuminor Szeras";

-- Orikan the Diviner 5" 3+ 3+ 4 4 5 2 10 4+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 3, 3, 4, 4, 5, "2", 10, 4
FROM models
WHERE models.name = "Orikan the Diviner";

-- Orikan Empowered 5" 2+ 2+ 7 7 7 4 10 4+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, "Orikan Empowered", 5, 2, 2, 7, 7, 7, "4", 10, 4
FROM models
WHERE models.name = "Orikan the Diviner";

-- Anrakyr the Traveller 5" 2+ 2+ 6 5 6 3 10 3+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 2, 2, 6, 5, 6, "3", 10, 3
FROM models
WHERE models.name = "Anrakyr the Traveller";

-- Trazyn the Infinite 5" 2+ 2+ 5 5 6 3 10 3+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 2, 2, 5, 5, 6, "3", 10, 3
FROM models
WHERE models.name = "Trazyn the Infinite";

-- Catacomb Command Barge 12" 2+ 2+ 5 6 8 3 10 3+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 12, 2, 2, 5, 6, 8, "3", 10, 3
FROM models
WHERE models.name = "Catacomb Command Barge";

-- overlord, 1
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 2, 2, 5, 5, 5, "3", 10, 3
FROM models
WHERE models.name = "Overlord";

-- Lord 5" 3+ 3+ 5 5 4 3 10 3+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 3, 3, 5, 5, 4, "3", 10, 3
FROM models
WHERE models.name = "Lord";

-- Cryptek 5" 3+ 3+ 4 4 4 1 10 4+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 3, 3, 4, 4, 4, "1", 10, 4
FROM models
WHERE models.name = "Cryptek";

-- Destroyer Lord 10" 3+ 3+ 5 6 6 4 10 3+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 10, 3, 3, 5, 6, 6, "4", 10, 3
FROM models
WHERE models.name = "Destroyer Lord";

-- necron warrior, 2
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 3, 3, 4, 4, 1, "1", 10, 4
FROM models
WHERE models.name = "Necron Warrior";

-- immortal, 3
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 3, 3, 4, 4, 1, "1", 10, 3
FROM models
WHERE models.name = "Immortal";

-- lychguard, 4
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 3, 3, 5, 5, 2, "2", 10, 3
FROM models
WHERE models.name = "Lychguard";

-- deathmarks, 5
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 3, 3, 4, 4, 1, "1", 10, 3
FROM models
WHERE models.name = "Deathmarks";

-- Flayed One 5" 3+ 6+ 4 4 1 3 10 4+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 5, 3, 6, 4, 4, 1, "3", 10, 4
FROM models
WHERE models.name = "Flayed One";

-- Triarch Praetorian 10" 3+ 3+ 5 5 2 2 10 3+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 10, 3, 3, 5, 5, 2, "2", 10, 3
FROM models
WHERE models.name = "Triarch Praetorian";

-- triarch stalker, 6
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 10, 3, 3, 7, 6, 10, "3", 10, 3
FROM models
WHERE models.name = "Triarch Stalker";

-- C’tan Shard of the Deceiver 8" 2+ 2+ 7 7 8 4 10 4+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 8, 2, 2, 7, 7, 8, "4", 10, 4
FROM models
WHERE models.name = "C'tan Shard of the Deceiver";

-- nightbringer, 9
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 8, 2, 2, 7, 7, 8, "4", 10, 4
FROM models
WHERE models.name = "C'tan Shard of the Nightbringer";

-- canoptek wraith, 10
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 12, 3, 3, 6, 5, 3, "3", 10, 4
FROM models
WHERE models.name = "Canoptek Wraith";

-- canoptek scarabs, 11
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 10, 4, 0, 3, 3, 3, "4", 10, 6
FROM models
WHERE models.name = "Canoptek Scarab Swarm";

-- Tomb Blades 14" 3+ 3+ 4 5 2 1 10 4+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 14, 3, 3, 4, 5, 2, "1", 10, 4
FROM models
WHERE models.name = "Tomb Blades";

-- destroyer, 19
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 10, 3, 3, 4, 5, 3, "2", 10, 3
FROM models
WHERE models.name = "Destroyer";

-- heavy destroyer, 20
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 10, 3, 3, 4, 5, 3, "2", 10, 3
FROM models
WHERE models.name = "Heavy Destroyer";

-- canoptek spyder, 12
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 6, 4, 4, 6, 6, 4, "4", 10, 3
FROM models
WHERE models.name = "Canoptek Spyders";

-- monolith, 13
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 6, 6, 3, 8, 8, 20, "3", 10, 3
FROM models
WHERE models.name = "Monolith";

-- Annihilation Barge 12" 6+ 3+ 5 6 8 3 10 4+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 12, 6, 3, 5, 6, 8, "3", 10, 4
FROM models
WHERE models.name = "Annihilation Barge";

-- doomsday ark, 16
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 12, 6, 3, 6, 6, 14, "3", 10, 4
FROM models
WHERE models.name = "Doomsday Ark";

-- Transcendent C’tan 8" 2+ 2+ 7 7 8 4 10 4+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 8, 2, 2, 7, 7, 8, "4", 10, 4
FROM models
WHERE models.name = "Transcendent C'tan";

-- Ghost ark, 16
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 12, 6, 3, 6, 6, 14, "3", 10, 4
FROM models
WHERE models.name = "Ghost Ark";

-- Doom Scythe 7-12 20-60 6+ 3+ 6 6 12 3 10 3+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, "20-60", 6, 3, 6, 6, 12, "3", 10, 3
FROM models
WHERE models.name = "Doom Scythe";

-- Night Scythe 7-12 20-60 6+ 3+ 6 6 12 3 10 3+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, "20-60", 6, 3, 6, 6, 12, "3", 10, 3
FROM models
WHERE models.name = "Night Scythe";

-- Obelisk 13-24 8 6+ 3+ 8 8 24 3 10 3+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 8, 6, 3, 8, 8, 24, "3", 10, 3
FROM models
WHERE models.name = "Obelisk";

-- Tesseract Vault 15-28 8 6+ 3 8 7 28 3 10 3+
INSERT INTO stats
    (id, modelID, statName, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, "save")
SELECT NULL, models.id, models.name, 8, 6, 3, 8, 7, 28, "3", 10, 3
FROM models
WHERE models.name = "Tesseract Vault";
