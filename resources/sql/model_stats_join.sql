DROP TABLE model_stats_join;

CREATE TABLE model_stats_join (
    model INTEGER,
    stats INTEGER
);

INSERT INTO model_stats_join (model, stats)
SELECT id, 1 FROM models WHERE name = "Overlord";

INSERT INTO model_stats_join (model, stats)
SELECT id, 2 FROM models WHERE name = "Necron Warrior";

INSERT INTO model_stats_join (model, stats)
SELECT id, 3 FROM models WHERE name = "Immortal";

INSERT INTO model_stats_join (model, stats)
SELECT id, 4 FROM models WHERE name = "Lychguard";

INSERT INTO model_stats_join (model, stats)
SELECT id, 5 FROM models WHERE name = "Deathmarks";

INSERT INTO model_stats_join (model, stats)
SELECT id, 6 FROM models WHERE name = "Triarch Stalker";

INSERT INTO model_stats_join (model, stats)
SELECT id, 7 FROM models WHERE name = "Triarch Stalker";

INSERT INTO model_stats_join (model, stats)
SELECT id, 8 FROM models WHERE name = "Triarch Stalker";

INSERT INTO model_stats_join (model, stats)
SELECT id, 9 FROM models WHERE name = "C'tan Shard of the Nightbringe";

INSERT INTO model_stats_join (model, stats)
SELECT id, 10 FROM models WHERE name = "Canoptek Wraith";

INSERT INTO model_stats_join (model, stats)
SELECT id, 11 FROM models WHERE name = "Canoptek Scarab Swarm";

INSERT INTO model_stats_join (model, stats)
SELECT id, 12 FROM models WHERE name = "Canoptek Spyders";

INSERT INTO model_stats_join (model, stats)
SELECT id, 13 FROM models WHERE name = "Monolith";

INSERT INTO model_stats_join (model, stats)
SELECT id, 14 FROM models WHERE name = "Monolith";

INSERT INTO model_stats_join (model, stats)
SELECT id, 15 FROM models WHERE name = "Monolith";

INSERT INTO model_stats_join (model, stats)
SELECT id, 16 FROM models WHERE name = "Doomsday Ark";

INSERT INTO model_stats_join (model, stats)
SELECT id, 17 FROM models WHERE name = "Doomsday Ark";

INSERT INTO model_stats_join (model, stats)
SELECT id, 18 FROM models WHERE name = "Doomsday Ark";