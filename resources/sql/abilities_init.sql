DROP TABLE abilities;

CREATE TABLE abilities
(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    ability TEXT,
    faction TEXT
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Reanimation Protocols",
        'Roll a D6 for each slain model from this unit (unless the whole unit has been completely destroyed) at the beginning of your turn. Do not roll for models that have fled the unit. On a 5+, the model’s reanimation protocols activate and it is returned to this unit with its full complement of wounds, otherwise it remains inactive (although you can roll again at the start of each of your subsequent turns). When a model’s reanimation protocols activate, set it up in unit coherency with any model from this unit that has not returned to the unit as a result of reanimation protocols this turn, and more than 1" from enemy models. If you cannot do this because there is no room to place the model, do not set it up (you can make Reanimation Protocols rolls for this model again in subsequent turns).',
        "Necrons"
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Living Metal",
        "At the beginning of your turn, this unit regains 1 lost wound.",
        "Necrons"
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Explodes",
        'If this model is reduced to 0 wounds, roll a D6 before removing it from the battlefield. On a 6 it explodes, and each unit within 6" suffers D3 mortal wounds.',
        "Necrons"
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Hovering",
        "Instead of measuring distance and ranges to and from this model’s base, measure to and from this model’s hull or base (whichever is closer).",
        "Necrons"
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Phase Shifter",
        "This model has a 4+ invulnerable save.",
        "Necrons"
);

INSERT INTO abilities
VALUES
    (
        NULL,

        "My Will Be Done",
        'At the beginning of your turn, choose a friendly <DYNASTY> INFANTRY unit within 6" of this model. Add 1 to Advance, charge and hit rolls for that unit until the beginning of your next turn. A unit can only be chosen as the target of this ability once in each turn.',
        "Necrons"
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Quantum Shielding",
        "Each time this model fails a saving throw, roll a D6. If the result is less than the damage inflicted by that attack, the damage is ignored (e.g. if this model suffers 4 damage, if you then roll a 3 or less the damage is ignored). Quantum Shielding cannot prevent damage caused by mortal wounds.",
        "Necrons"
);