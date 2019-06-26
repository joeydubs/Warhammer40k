DROP TABLE units;

CREATE TABLE units (
    id INTEGER PRIMARY KEY,
    name TEXT,
    description TEXT,
    options TEXT,
    role TEXT,
    power INTEGER
);

INSERT INTO units VALUES (
    NULL,
    "Imotekh the Stormlord",
    "Imotekh the Stormlord is a single model armed with the Staff of the Destroyer and a gauntlet of fire. Only one of this model may be included in your army.",
    NULL,
    "HQ",
    10
);

INSERT INTO units VALUES (
    NULL,
    "Nemesor Zahndrekh",
    "Nemesor Zahndrekh is a single model armed with a staff of light. Only one of this model may be included in your army.",
    NULL,
    "HQ",
    9
);

INSERT INTO units VALUES (
    NULL,
    "Vargard Obyron",
    "Vargard Obyron is a single model armed with a warscythe. Only one of this model may be included in your army.",
    NULL,
    "HQ",
    7
);

INSERT INTO units VALUES (
    NULL,
    "Illuminor Szeras",
    "Illuminor Szeras is a single model armed with the Eldritch Lance. Only one of this model may be included in your army.",
    NULL,
    "HQ",
    8
);

INSERT INTO units VALUES (
    NULL,
    "Orikan the Diviner",
    "Orikan the Diviner is a single model armed with the Staff of Tomorrow. Only one of this model may be included in your army.",
    NULL,
    "HQ",
    6
);

INSERT INTO units VALUES (
    NULL,
    "Anrakyr the Traveller",
    "Anrakyr the Traveller is a single model armed with a tachyon arrow and warscythe. Only one of this model may be included in your army.",
    NULL,
    "HQ",
    9
);

INSERT INTO units VALUES (
    NULL,
    "Trazyn the Infinite",
    "Trazyn the Infinite is a single model armed with the Empathic Obliterator. Only one of this model may be included in your army.",
    NULL,
    "HQ",
    5
);

INSERT INTO units VALUES (
    NULL,
    "Catacomb Command Barge",
    "A Catacomb Command Barge is a single model equipped with a gauss cannon. It is ridden by an Overlord armed with a staff of light.",
    "The Overlord may replace their staff of light with a hyperphase sword, a voidblade or a warscythe. The Overlord may take a resurrection orb. The Catacomb Command Barge may replace its gauss cannon with a tesla cannon.",
    "HQ",
    9
);

INSERT INTO units VALUES (
    NULL,
    "Overlord",
    "An Overlord is a single model armed with a staff of light.",
    "This model may replace its staff of light with a voidscythe, a hyperphase sword, a voidblade or a warscythe. This model may take a resurrection orb.",
    "HQ",
    6
);

INSERT INTO units VALUES (
    NULL,
    "Lord",
    "A Lord is a single model armed with a staff of light.",
    "This model may replace its staff of light with a hyperphase sword, a voidblade or a warscythe. This model may take a resurrection orb.",
    "HQ",
    5
);

INSERT INTO units VALUES (
    NULL,
    "Cryptek",
    "A Cryptek is a single model armed with a staff of light.",
    "This model may take either a chronometron or a Canoptek cloak.",
    "HQ",
    5
);

INSERT INTO units VALUES (
    NULL,
    "Destroyer Lord",
    "A Destroyer Lord is a single model armed with a staff of light.",
    "This model may replace its staff of light with a hyperphase sword, a voidblade or a warscythe. This model may take either a phylactery or a resurrection orb.",
    "HQ",
    7
);

INSERT INTO units VALUES (
    NULL,
    "Necron Warriors",
    "This unit contains 10 Necron Warriors. It may include up to 10 additional Necron Warriors (Power Rating +6). Each model is armed with a gauss flayer.",
    NULL,
    "Troops",
    6
);

INSERT INTO units VALUES (
    NULL,
    "Immortals",
    "This unit contains 5 Immortals. It can include up to 5 additional Immortals (Power Rating +4). Each model is armed with a gauss blaster.",
    "The entire unit may replace their gauss blasters with tesla carbines.",
    "Troops",
    4
);

INSERT INTO units VALUES (
    NULL,
    "Lychguard",
    "This unit contains 5 Lychguard. It can include up to 5 additional Lychguard (Power Rating +8). Each model is armed with a warscythe.",
    "The entire unit may replace their warscythes with hyperphase swords and dispersion shields.",
    "Elites",
    8
);

INSERT INTO units VALUES (
    NULL,
    "Deathmarks",
    "This unit contains 5 Deathmarks. It can include up to 5 additional Deathmarks (Power Rating +4). Each model is armed with a synaptic disintegrator.",
    NULL,
    "Elites",
    5
);

INSERT INTO units VALUES (
    NULL,
    "Flayed Ones",
    "This unit contains 5 Flayed Ones. It can include up to 5 additional Flayed Ones (Power Rating +4), up to 10 additional Flayed Ones (Power Rating +8) or up to 15 additional Flayed Ones (Power Rating +12). Each model attacks with their flayer claws.",
    NULL,
    "Elites",
    4
);

INSERT INTO units VALUES (
    NULL,
    "Triarch Praetorians",
    "This unit contains 5 Triarch Praetorians. It can include up to 5 additional Triarch Praetorians (Power Rating +8). Each model is armed with a rod of covenant.",
    "The entire unit may replace their rods of covenant with voidblades and particle casters.",
    "Elites",
    8
);

INSERT INTO units VALUES (
    NULL,
    "Triarch Stalker",
    "A Triarch Stalker is a single model equipped with a heat ray and massive forelimbs.",
    "This model may replace its heat ray with a particle shredder or a twin heavy gauss cannon.",
    "Elites",
    8
);

INSERT INTO units VALUES (
    NULL,
    "C'tan Shard of the Deceiver",
    "The C’tan Shard of the Deceiver is a single model that attacks with its star-god fists. Only one of this model may be included in your army.",
    NULL,
    "Elites",
    12
);

INSERT INTO units VALUES (
    NULL,
    "C'tan Shard of the Nightbringer",
    "The C’tan Shard of the Nightbringer is a single model that attacks with a gaze of death and the Scythe of the Nightbringer. Only one of this model may be included in your army.",
    NULL,
    "Elites",
    12
);

INSERT INTO units VALUES (
    NULL,
    "Canoptek Wraiths",
    "This unit contains 3 Canoptek Wraiths. It may include up to 3 additional Canoptek Wraiths (Power Rating +9). Each model is equipped with vicious claws.",
    "Any model may take a particle caster, transdimensional beamer or whip coils.",
    "Fast Attack",
    9
);

INSERT INTO units VALUES (
    NULL,
    "Canoptek Scarabs",
    "This unit contains 3 Canoptek Scarab Swarms. It may include up to 3 additional Canoptek Scarab Swarms (Power Rating +2) or up to 6 additional Canoptek Scarab Swarms (Power Rating +4). Each swarm is equipped with feeder mandibles.",
    NULL,
    "Fast Attack",
    2
);

INSERT INTO units VALUES (
    NULL,
    "Tomb Blades",
    "This unit contains 3 Tomb Blades. It can include up to 3 additional Tomb Blades (Power Rating +5) or up to 6 additional Tomb Blades (Power Rating +9). Each model is equipped with two gauss blasters.",
    "Any model may replace its two gauss blasters with two tesla carbines or a particle beamer. Any model may take shieldvanes. Any model may take a nebuloscope or a shadowloom.",
    "Fast Attack",
    5
);

INSERT INTO units VALUES (
    NULL,
    "Destroyers",
    "This unit contains 1 Destroyer. It can include up to 5 additional Destroyers (Power Rating +3 per model). If the unit contains at least three models, a Heavy Destroyer can take the place of a Destroyer. Each Destroyer is armed with a gauss cannon. The Heavy Destroyer is armed with a heavy gauss cannon.",
    NULL,
    "Fast Attack",
    3
);

INSERT INTO units VALUES (
    NULL,
    "Heavy Destroyers",
    "This unit contains 1 Heavy Destroyer. It may include 1 additional Heavy Destroyer (Power Rating +3) or 2 additional Heavy Destroyers (Power Rating +6). Each model is armed with a heavy gauss cannon.",
    NULL,
    "Heavy Support",
    3
);

INSERT INTO units VALUES (
    NULL,
    "Canoptek Spyders",
    "This unit contains 1 Canoptek Spyder. It may include 1 additional Canoptek Spyder (Power Rating +4) or 2 additional Canoptek Spyders (Power Rating +8). Each model is equipped with automaton claws.",
    "Any model may take a fabricator claw array. Any model may take a gloom prism. Any model may take two particle beamers.",
    "Heavy Support",
    4
);

INSERT INTO units VALUES (
    NULL,
    "Monolith",
    "A Monolith is a single model equipped with four gauss flux arcs and a particle whip.",
    NULL,
    "Heavy Support",
    19
);

INSERT INTO units VALUES (
    NULL,
    "Annihilation Barge",
    "An Annihilation Barge is a single model equipped with a gauss cannon and a twin tesla destructor.",
    "This model may replace its gauss cannon with a tesla cannon.",
    "Heavy Support",
    8
);

INSERT INTO units VALUES (
    NULL,
    "Doomsday Ark",
    "A Doomsday Ark is a single model equipped with a doomsday cannon and two gauss flayer arrays.",
    NULL,
    "Heavy Support",
    10
);

INSERT INTO units VALUES (
    NULL,
    "Transcendent C'tan",
    "A Transcendent C’tan is a single model that attacks with its crackling tendrils.",
    NULL,
    "Heavy Support",
    12
);

INSERT INTO units VALUES (
    NULL,
    "Ghost Ark",
    "A Ghost Ark is a single model equipped with two gauss flayer arrays.",
    NULL,
    "Transport",
    8
);

INSERT INTO units VALUES (
    NULL,
    "Doom Scythe",
    "A Doom Scythe is a single model equipped with a death ray and two tesla destructors.",
    NULL,
    "Flyer",
    11
);

INSERT INTO units VALUES (
    NULL,
    "Night Scythe",
    "A Night Scythe is a single model equipped with two tesla destructors.",
    NULL,
    "Flyer",
    8
);

INSERT INTO units VALUES (
    NULL,
    "Obelisk",
    "An Obelisk is a single model equipped with four tesla spheres.",
    NULL,
    "Lord of War",
    22
);

INSERT INTO units VALUES (
    NULL,
    "Tesseract Vault",
    "A Tesseract Vault is a single model equipped with four tesla spheres.",
    NULL,
    "Lord of War",
    25
);