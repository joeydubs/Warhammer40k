DROP TABLE abilities;

CREATE TABLE abilities
(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    ability TEXT
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Phaeron of the Sautekh Dynasty",
        "Imotekh the Stormlord can use his My Will Be Done ability twice a turn, but only if you choose friendly SAUTEKH INFANTRY units to be affected by it both times."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Lord of the Storm",
        'Once per battle, in your Shooting phase, Imotekh can call the storm: pick an enemy unit within 48" of Imotekh, other than a CHARACTER, and roll a D6. On a 2+ that unit suffers that many mortal wounds. Then roll a D6 for each enemy unit within 6" of that unit; on a 6 the unit being rolled for suffers D3 mortal wounds.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Undying",
        "Imotekh the Stormlord regains D3 lost wounds at the beginning of your turn, rather than 1, from his Living Metal ability."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "My Will Be Done (Imotekh)",
        'At the beginning of your turn, choose a friendly NECRONS INFANTRY unit within 6" of Imotekh the Stormlord. Add 1 to Advance, charge and hit rolls for that unit until the beginning of your next turn. A unit can only be chosen as the target of this ability once in each turn.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Bloodswarm Necroscarabs",
        'You can re-roll hit rolls of 1 for friendly units of SAUTEKH Flayed Ones that are within 12" of Imotekh the Stormlord'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Grand Strategist",
        'If your army is Battle-forged, you receive 1 additional Command Point if Imotekh the Stormlord is your Warlord.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Counter Tactics",
        'Counter Tactics: At the beginning of your opponent’s turn, choose one enemy CHARACTER within 12" of Nemesor Zahndrekh. Any aura abilities that character has cannot be used until the beginning of your opponent’s next turn.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "My Will Be Done (Nemesor)",
        'At the beginning of your turn, choose a friendly SAUTEKH INFANTRY unit within 6" of Nemesor Zahndrekh. Add 1 to Advance, charge and hit rolls for that unit until the beginning of your next turn. A unit can only be chosen as the target of this ability once in each turn.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Transient Madness",
        'Roll a D3 at the beginning of your turn and consult the following table. Choose a friendly SAUTEKH INFANTRY unit within 6" of Nemesor Zahndrekh to gain the relevant ability until the beginning of your next turn.
            D3 - Result
            1 - Avenge the Fallen: Add 1 to the Attacks characteristic of models in this unit.
            2 - Quell the Rebellion: Improve the Ballistic Skill of models in this unit by 1 (e.g. a Ballistic Skill of 3+ becomes 2+).
            3 - Solarmills? Charge!: Re-roll failed charge rolls for this unit.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Cleaving Counterblow",
        'If Vargard Obyron is slain during the Fight phase, do not remove his model until the end of the phase. He can still fight in this phase, if he has not already done so.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "The Lord's Will (Vargard)",
        'Re-roll wound rolls of 1 for friendly SAUTEKH INFANTRY units that are within 6" of Vargard Obyron.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Ghostwalk Mantle",
        'At the end of any of your Movement phases, you can remove Vargard Obyron and a friendly SAUTEKH INFANTRY unit within 6" of Vargard Obyron (other than Nemesor Zahndrekh) from the battlefield and set them up so that all models are within 6" of Nemesor Zahndrekh and more than 1" from any enemy models.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "The Vargard's Duty",
        'Roll a D6 each time Nemesor Zahndrekh loses a wound whilst he is within 3" of Vargard Obyron; on a 2+ Obyron can intercept that hit – Zahndrekh does not lose a wound but Obyron suffers a mortal wound.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Master Technomancer",
        'Add 1 to all Reanimation Protocols rolls for models from friendly NECRONS units within 3" of Illuminor Szeras. A unit cannot benefit from both the Master Technomancer and Technomancer abilities in the same turn.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Mechanical Augmentation",
        'At the end of your Movement phase, you can choose a friendly NECRONS Warriors or Immortals unit within 1" of Illuminor Szeras. Roll a D3 to see what characteristic modifier models in that unit gain for the rest of the battle:
            D3 - Augmentation
            1 - +1 Strength
            2 - +1 Toughness
            3 - Ballistic Skill improved by 1 (e.g. a Ballistic Skill of 3+ becomes 2+)
        A unit can only be the target of this ability once per battle.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Master Chronomancer",
        'Friendly SAUTEKH INFANTRY units within 6" of Orikan the Diviner have a 5+ invulnerable save.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Technomancer (Orikan)",
        'Add 1 to Reanimation Protocols rolls for models from SAUTEKH units within 3" of any friendly SAUTEKH CRYPTEKS.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "The Stars Are Right",
        'Roll a D6 at the start of each of your turns. If the result is less than the current battle round number, Orikan uses the Orikan Empowered profile for the rest of the game (though any damage he has sustained is carried over).'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Lord of the Phyrrhian Legions",
        'Add 1 to the Attacks characteristic of friendly NECRONS INFANTRY units within 3" of Anrakyr the Traveller.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Mind in the Machine",
        'At the start of your Shooting phase, choose an enemy VEHICLE model within 12" of Anrakyr the Traveller and roll a D6. On a 4+, choose one of that vehicle’s weapons. You may shoot with that weapon at another enemy unit. The weapon fires using the vehicle’s Ballistic Skill.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "My Will Be Done (Anrakyr)",
        'At the beginning of your turn, choose a friendly NECRONS INFANTRY unit within 6" of Anrakyr the Traveller. Add 1 to Advance, charge and hit rolls for that unit until the beginning of your next turn. A unit can only be chosen as the target of this ability once in each turn.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "My Will Be Done (Trazyn)",
        'At the beginning of your turn, choose a friendly NIHILAKH INFANTRY unit within 6" of Trazyn the Infinite. Add 1 to Advance, charge and hit rolls for that unit until the beginning of your next turn. A unit can only be chosen as the target of this ability once in each turn.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Surrogate Hosts",
        'If Trazyn the Infinite is slain, roll a D6. On a 2+, you may choose another friendly NECRONS INFANTRY CHARACTER (other than CHARACTERS that you can only include once in your army). Remove that model as if it were slain and place Trazyn in its place with D3 wounds remaining. If no such CHARACTERS remain, or you rolled a 1, remove Trazyn the Infinite as a casualty as normal.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Wave of Command",
        'At the beginning of your turn, choose a friendly <DYNASTY> INFANTRY unit within 12" of this model. Add 1 to Advance, charge and hit rolls for that unit until the beginning of your next turn. A unit can only be chosen as the target of Wave of Command or My Will Be Done once in each turn.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Explodes (Catacomb)",
        'If this model is reduced to 0 wounds, roll a D6 before removing it from the battlefield. On a 6 it explodes, and each unit within 3" suffers a mortal wound.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Reanimation Protocols",
        'Roll a D6 for each slain model from this unit (unless the whole unit has been completely destroyed) at the beginning of your turn. Do not roll for models that have fled the unit. On a 5+, the model’s reanimation protocols activate and it is returned to this unit with its full complement of wounds, otherwise it remains inactive (although you can roll again at the start of each of your subsequent turns). When a model’s reanimation protocols activate, set it up in unit coherency with any model from this unit that has not returned to the unit as a result of reanimation protocols this turn, and more than 1" from enemy models. If you cannot do this because there is no room to place the model, do not set it up (you can make Reanimation Protocols rolls for this model again in subsequent turns).'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Living Metal",
        "At the beginning of your turn, this unit regains 1 lost wound."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "The Lord's Will (Lord)",
        'Re-roll wound rolls of 1 for friendly <DYNASTY> INFANTRY units that are within 6" of this model.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Technomancer (Cryptek)",
        'Add 1 to Reanimation Protocols rolls for models from <DYNASTY> units within 3" of any friendly <DYNASTY> CRYPTEKS.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Hardwired Hatred",
        'You can re-roll hit rolls of 1 for this model'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "United in Hatred",
        'You can re-roll wound rolls of 1 in the Shooting phase for this model and models from friendly <DYNASTY> Destroyer and <DYNASTY> Heavy Destroyer units within 6".'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Guardian Protocols",
        'Roll a D6 each time a friendly <DYNASTY> CHARACTER loses a wound whilst they are within 3" of this unit; on a 2+ a model from this unit can intercept that hit – the character does not lose a wound but this unit suffers a mortal wound.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Hunters from Hyperspace",
        'During deployment, you can set up this unit in a hyperspace oubliette instead of placing it on the battlefield. At the end of any of your Movement phases the Deathmarks can slip back into reality – set them up anywhere on the battlefield that is more than 9" away from any enemy models.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Ethereal Interception",
        'When an enemy unit is set up (other than during deployment or when disembarking) you can immediately set up a unit of Deathmarks that was set up in a hyperspace oubliette on the battlefield, anywhere more than 9" away from any enemy models and within 12" of the enemy unit that has just been set up. You can then make a shooting attack with this unit as if it were your Shooting phase, but this attack must target the enemy unit that was just set up.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Flesh Hunger",
        "If any Flayed Ones slay any models in a unit, that unit subtracts 1 from its Leadership characteristic until the end of the turn."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Haunting Horrors",
        'During deployment, you can set up this unit in a charnel pocket-dimension instead of placing it on the battlefield. At the end of any of your Movement phases the Flayed Ones can crawl out into reality - set them up anywhere on the battlefield that is more than 9" away from enemy models.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "A Purpose Unshakeable",
        'This unit automatically passes Morale tests.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Targeting Relay",
        'You can re-roll hit rolls of 1 for any friendly NECRONS that make a shooting attack against a unit that has already been attacked by any Triarch Stalkers in this phase.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Explodes (Stalker)",
        'If this model is reduced to 0 wounds, roll a D6 before removing it from the battlefield. On a 6 it explodes, and each unit within 6" suffers D3 mortal wounds.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Necrodermis",
        "This C'tan Shard has a 4+ invulnerable save."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Dread",
        "Your opponent must add 1 to Morale tests for any enemy units within 12 inches of the C'tan Shard of the Deceiver."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Grand Illusion",
        "At the beginning of the first battle round, but before the first turn begins, you can remove the C’tan Shard of the Deceiver and/or up to D3 other friendly NECRONS units from the battlefield, then set them up again more than 12 inches from any enemy models. If you do so, these units cannot charge in your first turn."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Powers of the C'tan (2)",
        "This C'tan Shard knows two Powers of the C'tan. It can use one of its powers at the end of each of its Movement phases."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Powers of the C'tan (4)",
        "This model knows four Powers of the C'tan. It can use a number of different Powers of the C'tan equal to the number in the damage table at the end of each of its Movement phases."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Reality Unravels",
        "If this C’tan Shard is ever reduced to 0 wounds, roll a D6 before removing it from the battlefield; on a 4+ its necrodermis tears a hole in reality, and each unit within 3 inches suffers D3 mortal wounds."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Enslaved Star God",
        "This model can never have a Warlord Trait."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Wraith Form",
        "Models in the unit have a 3+ invulnerable save, and can move across models and terrain as if they were not there. Models in this unit can shoot and charge even if they Fell Back this turn."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Evasion Engrams",
        "Your opponent must subtract 1 from hit rolls that target this unit in the Shooting Phase."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Repulsor Platform",
        "This unit can move and fire Heavy weapons without suffering the penalty to its hit rolls."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Scarab Hive",
        "At the beginning of your turn, you can roll a D6 for each <DYNASTY> Canoptek Scarabs unit from your army that is below its starting number of models and within 6 inches of any friendly <DYNASTY> Canoptek Spyders units. On a 1, one of those Canoptek Spyders units within 6 inches of the unit being rolled for suffers a mortal wound. On a 2+ one of those Canoptek Spyders units within 6 inches of the unit being rolled for unleashes reinforcements: return a Canoptek Scarab Swarm to the depleted unit, in unit coherency and more than 1 inches from enemy models. If you cannot do this because there is no room to place the model, do not set it up."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Death Descending",
        'During deployment, you can set up this model in the upper atmosphere instead of placing it on the battlefield. At the end of any of your Movement phases the Monolith can plummet to the battlefield – set it up anywhere on the battlefield that is more than 12" from any enemy models.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Port of Exile",
        'When an enemy unit (other than a MONSTER or VEHICLE) finishes a charge move within 1" of this model, its portal of exile may activate. Roll a D6 and compare it to the value required on the damage table above. If the roll is successful, the charging unit suffers D6 mortal wounds.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Hovering (Monolith)",
        "Distance and ranges are always measured to and from this model’s hull, even though it has a base."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Floating Fortress",
        "This model can move and fire Heavy weapons without suffering the penalty to its hit rolls."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Eternity Gate",
        'When you set up this model, at the same time you can also set up any number of friendly <DYNASTY> INFANTRY units on their tomb world rather than setting them up on the battlefield. Before this model moves in your Movement phase, a single friendly <DYNASTY> unit that was set up on their tomb world can be transported onto the battlefield by the Monolith. Set up the unit so that it is wholly within 3" of this model and more than 1" from any enemy models. If all <DYNASTY> Night Scythes and Monoliths from your army are destroyed, any friendly <DYNASTY> units still on their tomb world are considered to be slain.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Explodes (Monolith)",
        'If this model is reduced to 0 wounds, roll a D6 before removing it from the battlefield. On a 6 it explodes, and each unit within 6" suffers D6 mortal wounds.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Explodes (Annihilation)",
        'If this model is reduced to 0 wounds, roll a D6 before removing it from the battlefield. On a 6 it explodes, and each unit within 3" suffers a mortal wound.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Explodes (Ark)",
        'If this model is reduced to 0 wounds, roll a D6 before removing it from the battlefield. On a 6 it explodes, and each unit within 6" suffers D3 mortal wounds.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Hovering (Ark)",
        "Instead of measuring distance and ranges to and from this model’s base, measure to and from this model’s hull or base (whichever is closer)."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Phase Shifter",
        "This model has a 4+ invulnerable save."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Fractured Personality",
        'Before the battle, you can pick one of the abilities opposite to apply to this model for the duration of the battle. Alternatively, you can roll two D6 to randomly determine two abilities and apply them both to this model for the duration of the battle (duplicate results have no effect).
        D6 - Ability
        1 - Cosmic Tyrant: This model can use two different Powers of the C’tan at the end of each of your Movement phases, instead of only one.
        2 - Immune to Natural Law: Add 1 to saving throws made for this model.
        3 - Sentient Necrodermis: This model regains D3 lost wounds at the start of each of your turns.
        4 - Transdimensional Displacement: When this model Advances, add 12" to its Move characteristic for that Movement phase instead of rolling a dice.
        5 - Entropic Touch: You can re-roll failed wound rolls for this model in the Fight phase.
        6 - Writhing Worldscape: Enemy units do not receive a bonus to their saving throws for being in cover whilst they are within 12" of this model.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Repair Barge",
        'You can make Reanimation Protocols rolls for any slain models from units embarked on a Ghost Ark, even though those units are not on the battlefield. Any models returned to the unit this way are added to the number of models embarked on the Ghost Ark – if any models cannot be returned because there is no more room on the Ghost Ark, they are not returned this turn. In addition, at the end of your Movement phase, you can make Reanimation Protocols rolls for slain models from <DYNASTY> Warriors units within 3" of any friendly <DYNASTY> Ghost Arks. You cannot use this ability on a unit that has been the target of a resurrection orb or the Orb of Eternity this turn.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Transport (Ghost Ark)",
        'This model can transport 10 <DYNASTY> INFANTRY models, which must be Warriors or CHARACTERS. It cannot transport Destroyer Lords.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Airborne",
        'This model cannot charge, can only be charged by units that can FLY, and can only attack or be attacked in the Fight phase by units that can FLY.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Hard to Hit",
        'Your opponent must subtract 1 from hit rolls for attacks that target this model in the Shooting phase.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Supersonic",
        'Each time this model moves, first pivot it on the spot up to 90° (this does not contribute to how far the model moves), and then move the model straight forwards. Note that it cannot pivot again after the initial pivot. When this model Advances, increase its Move characteristic by 20" until the end of the phase – do not roll a dice.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Crash and Burn",
        'If this model is reduced to 0 wounds, roll a D6 before removing it from the battlefield. On a 6 it crashes in a fiery explosion and each unit within 6" suffers D3 mortal wounds.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Invasion Beams",
        'When you set up this model, at the same time you can also set up any number of friendly <DYNASTY> INFANTRY units on their tomb world rather than setting them up on the battlefield. Before this model moves in your Movement phase, a single friendly <DYNASTY> unit that was set up on their tomb world can be beamed onto the battlefield by the Night Scythe. Set up the unit so that it is wholly within 3" of this model and more than 1" from any enemy models. If all <DYNASTY> Night Scythes and Monoliths from your army are destroyed, any friendly <DYNASTY> units still on their tomb world are considered to be slain.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "My Will Be Done (Overlord)",
        'At the beginning of your turn, choose a friendly <DYNASTY> INFANTRY unit within 6" of this model. Add 1 to Advance, charge and hit rolls for that unit until the beginning of your next turn. A unit can only be chosen as the target of this ability once in each turn.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Quantum Shielding",
        "Each time this model fails a saving throw, roll a D6. If the result is less than the damage inflicted by that attack, the damage is ignored (e.g. if this model suffers 4 damage, if you then roll a 3 or less the damage is ignored). Quantum Shielding cannot prevent damage caused by mortal wounds."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Hovering Sentinel",
        'During deployment, you can set up this model in the upper atmosphere instead of placing it on the battlefield. At the end of any of your Movement phases the Obelisk can plummet to the battlefield – set it up anywhere on the battlefield that is more than 12" from any enemy models.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Gravity Pulse",
        "At the start of your Shooting phase, roll a D6 for each enemy unit that can FLY and is within the distance specified on the damage table above. On a roll of 6, that unit suffers D3 mortal wounds."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Explodes (Obelisk)",
        'If this model is reduced to 0 wounds, roll a D6 before removing it from the battlefield. On a 6 it explodes, and each unit within 2D6" suffers D6 mortal wounds.'
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Transtemporal Force Field",
        "This model has a 4+ invulnerable save."
);

INSERT INTO abilities
VALUES
    (
        NULL,
        "Vengeance of the Enchained",
        "If this model is reduced to 0 wounds, roll a D6 before removing it from the battlefield. On a 4+ the Transcendent C'tan contained within takes their vengeance, and each unit within 2D6 inches suffers D6 mortal wounds."
);