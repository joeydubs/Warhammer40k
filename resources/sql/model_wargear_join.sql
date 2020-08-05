DROP TABLE IF EXISTS model_wargear_join;

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
WHERE models.name = "Imotekh the Stormlord"
AND wargear.name = "Gauntlet of fire";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Imotekh the Stormlord"
AND wargear.name = "Staff of the Destroyer";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Nemesor Zahndrekh"
AND wargear.name = "Staff of light";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Vargard Obyron"
AND wargear.name = "Warscythe";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Illuminor Szeras"
AND wargear.name = "Eldritch Lance";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Orikan the Diviner"
AND wargear.name = "Staff of Tomorrow";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Anrakyr the Traveller"
AND wargear.name = "Tachyon arrow";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Anrakyr the Traveller"
AND wargear.name = "Warscythe";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Trazyn the Infinite"
AND wargear.name = "Empathic Obliterator";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Catacomb Command Barge"
AND wargear.name = "Gauss cannon";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Catacomb Command Barge"
AND wargear.name = "Staff of light";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Catacomb Command Barge"
AND wargear.name = "Tesla cannon";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Catacomb Command Barge"
AND wargear.name = "Hyperphase sword";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Catacomb Command Barge"
AND wargear.name = "Voidblade";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Catacomb Command Barge"
AND wargear.name = "Warscythe";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Catacomb Command Barge"
AND wargear.name = "Resurrection Orb";

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
AND wargear.name = "Hyperphase sword";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Overlord"
AND wargear.name = "Voidblade";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Overlord"
AND wargear.name = "Voidscythe";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Overlord"
AND wargear.name = "Warscythe";

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
WHERE models.name = "Lord"
AND wargear.name = "Staff of light";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Lord"
AND wargear.name = "Hyperphase sword";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Lord"
AND wargear.name = "Voidblade";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Lord"
AND wargear.name = "Warscythe";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Lord"
AND wargear.name = "Resurrection Orb";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Cryptek"
AND wargear.name = "Staff of light";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Cryptek"
AND wargear.name = "Chronometron";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Cryptek"
AND wargear.name = "Canoptek Cloak";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Destroyer Lord"
AND wargear.name = "Staff of light";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Destroyer Lord"
AND wargear.name = "Hyperphase sword";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Destroyer Lord"
AND wargear.name = "Voidblade";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Destroyer Lord"
AND wargear.name = "Warscythe";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Destroyer Lord"
AND wargear.name = "Phylactery";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Destroyer Lord"
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

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Lychguard"
AND wargear.name = "Hyperphase sword";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Lychguard"
AND wargear.name = "Warscythe";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Lychguard"
AND wargear.name = "Dispersion Shield";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Deathmarks"
AND wargear.name = "Synaptic disintegrator";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Flayed One"
AND wargear.name = "Flayer claws";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Triarch Praetorian"
AND wargear.name = "Particle caster";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Triarch Praetorian"
AND wargear.name = "Rod of covenant";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Triarch Praetorian"
AND wargear.name = "Voidblade";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Triarch Stalker"
AND wargear.name = "Heat ray";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Triarch Stalker"
AND wargear.name = "Particle shredder";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Triarch Stalker"
AND wargear.name = "Twin heavy gauss cannon";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Triarch Stalker"
AND wargear.name = "Massive forelimbs";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "C'tan Shard of the Deceiver"
AND wargear.name = "Star-god fists";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "C'tan Shard of the Nightbringer"
AND wargear.name = "Gaze of death";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "C'tan Shard of the Nightbringer"
AND wargear.name = "Scythe of the Nightbringer";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Canoptek Wraith"
AND wargear.name = "Particle caster";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Canoptek Wraith"
AND wargear.name = "Transdimensional beamer";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Canoptek Wraith"
AND wargear.name = "Vicious claws";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Canoptek Wraith"
AND wargear.name = "Whip coils";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Canoptek Scarab Swarm"
AND wargear.name = "Feeder mandibles";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Tomb Blades"
AND wargear.name = "Gauss blaster";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Tomb Blades"
AND wargear.name = "Particle beamer";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Tomb Blades"
AND wargear.name = "Tesla carbine";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Tomb Blades"
AND wargear.name = "Shieldvanes";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Tomb Blades"
AND wargear.name = "Nebuloscope";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Tomb Blades"
AND wargear.name = "Shadowloom";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Destroyer"
AND wargear.name = "Gauss cannon";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Heavy Destroyer"
AND wargear.name = "Heavy gauss cannon";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Canoptek Spyders"
AND wargear.name = "Particle beamer";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Canoptek Spyders"
AND wargear.name = "Automaton claws";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Canoptek Spyders"
AND wargear.name = "Fabricator Claw Array";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Canoptek Spyders"
AND wargear.name = "Gloom Prism";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Monolith"
AND wargear.name = "Gauss flux arc";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Monolith"
AND wargear.name = "Particle whip";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Annihilation Barge"
AND wargear.name = "Gauss cannon";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Annihilation Barge"
AND wargear.name = "Twin tesla destructor";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Annihilation Barge"
AND wargear.name = "Tesla cannon";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Doomsday Ark"
AND wargear.name = "Doomsday cannon";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Doomsday Ark"
AND wargear.name = "Gauss flayer array";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Transcendent C'tan"
AND wargear.name = "Crackling tendrils";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Ghost Ark"
AND wargear.name = "Gauss flayer array";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Doom Scythe"
AND wargear.name = "Death ray";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Doom Scythe"
AND wargear.name = "Tesla destructor";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Night Scythe"
AND wargear.name = "Tesla destructor";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Obelisk"
AND wargear.name = "Tesla sphere";

INSERT INTO model_wargear_join (
    model,
    wargear
)
SELECT models.id, wargear.id
FROM models, wargear
WHERE models.name = "Tesseract Vault"
AND wargear.name = "Tesla sphere";