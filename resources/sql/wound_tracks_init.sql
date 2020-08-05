DROP TABLE IF EXISTS wound_tracks;

CREATE TABLE wound_tracks
(
    id INTEGER PRIMARY KEY,
    modelID INTEGER,
    tier INTEGER,
    remainingW TEXT,
    char1name TEXT,
    char1value TEXT,
    char2name TEXT,
    char2value TEXT,
    char3name TEXT,
    char3value TEXT
);

-- triarch stalker, 6
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 1, "6-10", "M", 10, "WS", 3, "BS", 3
FROM models
WHERE models.name = "Triarch Stalker";

-- triarch stalker, 7
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 2, "3-5", "M", 8, "WS", 4, "BS", 4
FROM models
WHERE models.name = "Triarch Stalker";

-- triarch stalker, 8
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 3, "1-2", "M", 6, "WS", 5, "BS", 5
FROM models
WHERE models.name = "Triarch Stalker";

-- monolith, 13
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 1, "11-20", "M", 6, "BS", 3, "Portal of Exile", 4
FROM models
WHERE models.name = "Monolith";

-- monolith, 14
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 2, "6-10", "M", 5, "BS", 4, "Portal of Exile", 5
FROM models
WHERE models.name = "Monolith";

-- monolith, 15
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 3, "1-5", "M", 4, "BS", 5, "Portal of Exile", 6
FROM models
WHERE models.name = "Monolith";

-- doomsday ark, 16
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 1, "8-14", "M", 12, "BS", 3, "A", 3
FROM models
WHERE models.name = "Doomsday Ark";

-- doomsday ark, 17
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 2, "4-7", "M", 8, "BS", 4, "A", "D3"
FROM models
WHERE models.name = "Doomsday Ark";

-- doomsday ark, 18
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 3, "1-3", "M", 4, "BS", 5, "A", 1
FROM models
WHERE models.name = "Doomsday Ark";

-- Ghost ark, 16
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 1, "8-14", "M", 12, "BS", 3, "A", 3
FROM models
WHERE models.name = "Ghost Ark";

-- Ghost ark, 17
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 2, "4-7", "M", 8, "BS", 4, "A", "D3"
FROM models
WHERE models.name = "Ghost Ark";

-- Ghost ark, 18
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 3, "1-3", "M", 4, "BS", 5, "A", 1
FROM models
WHERE models.name = "Ghost Ark";

-- Doom Scythe 7-12 20-60 6+ 3+ 6 6 12 3 10 3+
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 1, "7-12", "M", "20-60", "BS", 3, "A", 3
FROM models
WHERE models.name = "Doom Scythe";

-- Doom Scythe 4-6 20-40 * 4+ * * * D3 * *
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 2, "4-6", "M", "20-40", "BS", 4, "A", "D3"
FROM models
WHERE models.name = "Doom Scythe";

-- Doom Scythe 1-3 20-25 * 5+ * * * 1 * *
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 3, "1-3", "M", "20-25", "BS", 5, "A", 1
FROM models
WHERE models.name = "Doom Scythe";

-- Night Scythe 7-12 20-60 6+ 3+ 6 6 12 3 10 3+
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 1, "7-12", "M", "20-60", "BS", 3, "A", 3
FROM models
WHERE models.name = "Night Scythe";

-- Night Scythe 4-6 20-40 * 4+ * * * D3 * *
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 2, "4-6", "M", "20-40", "BS", 4, "A", "D3"
FROM models
WHERE models.name = "Night Scythe";

-- Night Scythe 1-3 20-25 * 5+ * * * 1 * *
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 3, "1-3", "M", "20-25", "BS", 5, "A", 1
FROM models
WHERE models.name = "Night Scythe";

-- Obelisk 13-24 8 6+ 3+ 8 8 24 3 10 3+
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 1, "13-24", "M", 8, "BS", 3, "Gravity Pulse", 18
FROM models
WHERE models.name = "Obelisk";

-- Obelisk 7-12 6 * 4+ * * * * * *
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 2, "7-12", "M", 6, "BS", 4, "Gravity Pulse", 12
FROM models
WHERE models.name = "Obelisk";

-- Obelisk 1-6 4 * 5+ * * * * * *
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 3, "1-6", "M", 4, "BS", 5, "Gravity Pulse", 6
FROM models
WHERE models.name = "Obelisk";

-- Tesseract Vault 15-28 8 6+ 3 8 7 28 3 10 3+
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 1, "15-28", "M", 8, "BS", 3, "Powers of the C'tan", 3
FROM models
WHERE models.name = "Tesseract Vault";

-- Tesseract Vault 8-14 6 * 4 * * * * * *
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 2, "8-14", "M", 6, "BS", 4, "Powers of the C'tan", 2
FROM models
WHERE models.name = "Tesseract Vault";

-- Tesseract Vault 1-7 4 * 5 * * * * * *
INSERT INTO wound_tracks
    (id, modelID, tier, remainingW, char1name, char1value, char2name, char2value, char3name, char3value)
SELECT NULL, models.id, 3, "1-7", "M", 4, "BS", 5, "Powers of the C'tan", 1
FROM models
WHERE models.name = "Tesseract Vault";
