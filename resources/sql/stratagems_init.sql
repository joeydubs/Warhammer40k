DROP TABLE stratagems;

CREATE TABLE stratagems (
    id INTEGER PRIMARY KEY,
    faction TEXT,
    name TEXT,
    flavor TEXT,
    description TEXT,
    commandPts INTEGER,
    allConditions BOOLEAN
);

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "COMMAND RE-ROLL",
    "",
    "You can re-roll any single dice.",
    1,
    false
FROM factions
WHERE factions.name = "Any";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "COUNTER-OFFENSIVE",
    "",
    "This Stratagem is used right after an enemy unit that charged has fought. Select one of your own eligible units and fight with it next.",
    2,
    false
FROM factions
WHERE factions.name = "Any";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "INSANE BRAVERY",
    "",
    "You can automatically pass a single Morale test (this Stratagem must be used before taking the test).",
    2,
    false
FROM factions
WHERE factions.name = "Any";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "ENHANCED REANIMATION PROTOCOLS",
    "The Necrons are a deathless foe that can recover from obliteration time and again.",
    "Use this Stratagem before making Reanimation Protocols rolls for a unit from your army. You can re-roll Reanimation Protocols rolls of 1 for that unit this turn.",
    2,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "WRATH OF THE C’TAN",
    "The C’tan’s ever-burning rage at their enslavement is turned upon the enemy with cataclysmic results.",
    "Use this Stratagem after a C’TAN SHARD from your army has resolved a Power of the C’tan. Roll a D6 to randomly select a Power of the C’tan from page 113. The C’tan Shard immediately uses the power rolled, even if it has already used that power this phase.",
    2,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "EMERGENCY INVASION BEAM",
    "Before it is destroyed, the Necron construct shifts all power to its dimensional gateway, beaming in warriors to take its place.",
    'Use this Stratagem when the last <DYNASTY> Night Scythe and/or Monolith from your army is destroyed. Before removing the model from the battlefield, you can immediately set up a friendly <DYNASTY> unit still on their tomb world wholly within 3" of the Night Scythe/Monolith and more than 1" from any enemy models.',
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "AMALGAMATED TARGETING DATA",
    "Synchronised targeting optics are fed to the Doom Scythe squadron, and they release a devastating pinpoint barrage.",
    'Use this Stratagem in your Shooting phase if a <DYNASTY> Doom Scythe from your army is within 6" of 2 other friendly <DYNASTY> Doom Scythes. The Doom Scythes cannot fire their death rays this phase – instead, select a point on the battlefield within 24" of all three vehicles that is visible to all of them. Roll a D6 for each unit within 3" of that point. Add 1 to the result if the unit being rolled for has 5 or more models, but subtract 1 if the unit being rolled for is a CHARACTER. On a 4+, that unit suffers 3D3 mortal wounds.',
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "DYNASTIC HEIRLOOMS",
    "In times of need, the phaerons will order the relic-vaults emptied, their priceless contents distributed amongst the legions.",
    "Use this Stratagem before the battle. Your army can have one extra Artefact of the Aeons for 1 CP, or two extra Artefacts of the Aeons for 3 CPs. All of the Artefacts of the Aeons that you include must be different and be given to different NECRONS CHARACTERS. This Stratagem can only be used once per battle.",
    3,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "ENHANCED INVASION BEAM",
    "A shimmering dimensional portal yawns wide for a few moments, spilling yet more fleshless warriors into the fray.",
    "Use this Stratagem before you set up a unit from a tomb world using the Invasion Beams ability of a Night Scythe from your army, or the Eternity Gate ability of a Monolith from your army. You can set up two units from a tomb world instead of one.",
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "SOLAR PULSE",
    "Many Necron weapons contain pulsing orbs within which is bound the awesome power of a solar flare.",
    "Use this Stratagem after a NECRONS unit from your army has declared its targets in the Shooting phase, but before any hit rolls are made. Pick one of the enemy units that your unit is targeting. The enemy unit does not receive the benefit of cover against your unit’s weapons this phase.",
    1,
    false
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "RESURRECTION PROTOCOLS",
    "Necron rulers possess sophisticated self-repair systems that can knit together even the most grievous wounds.",
    'Use this Stratagem when a NECRONS CHARACTER from your army (excluding Trazyn the Infinite and C’TAN SHARDS) is slain. At the end of that phase, roll a D6. On a 4+ set the character up again, as close as possible to his previous position, and more than 1" from any enemy models, with 1 wound remaining. This Stratagem cannot be used to resurrect the same model more than once per battle.',
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "DAMAGE CONTROL OVERRIDE",
    "Its self-repair routines overridden, the vehicle briefly operates at peak efficiency despite being critically damaged.",
    "Use this Stratagem at the start of any turn. Pick a NECRONS VEHICLE from your army. Until the end of this turn, use the top row of that vehicle’s damage table, regardless of how many wounds it has left. This ends immediately if the model is reduced to 0 wounds.",
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "REPAIR SUBROUTINES",
    "When engaged in a battle of attrition, Canoptek constructs react by enabling a series of repairing adaptive subroutines.",
    "Use this Stratagem at the start of your turn, before making any Reanimation Protocols rolls. Select a CANOPTEK unit from your army that is on the battlefield. That unit gains the Reanimation Protocols ability until the end of your turn.",
    2,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "SELF-DESTRUCTION",
    "The self-destruct protocols of Canoptek Scarabs cause them to explode in a hail of razor-sharp armour fragments.",
    'Use this Stratagem after a unit of Canoptek Scarabs from your army piles in, but before they make their close combat attacks. Select a Canoptek Scarab Swarm model in your unit and then pick an enemy unit within 1" of it. Your Canoptek Scarab Swarm model is destroyed. Remove it from the battlefield and roll a D6; on a 2+ the enemy unit you picked suffers D3 mortal wounds.',
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "DISRUPTION FIELDS",
    "The thrumming aura of negative energy known as a disruption field warps and dissolves both armour and flesh.",
    "Use this Stratagem before a NECRONS INFANTRY unit from your army fights in the Fight phase. Increase the Strength characteristic of all models in that unit by 1 until the end of the phase.",
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "ENTROPIC STRIKE",
    "The disruption field emanating from this warrior’s weapon is so powerful that it entirely obliterates matter from existence.",
    "Use this Stratagem in the Fight phase before a NECRONS CHARACTER from your army fights. Invulnerable saves cannot be taken against the first close combat attack made by this character this phase.",
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "DISPERSION FIELD AMPLIFICATION",
    "Lychguard can overcharge the fields of their dispersion shields.",
    "Use this Stratagem in the Shooting phase when an enemy unit targets a unit of Lychguard from your army equipped with dispersion shields. Your unit’s invulnerable save is improved to 3+ until the end of the phase. In addition, until the end of the phase, each time you roll an unmodified 6 for this unit’s invulnerable saving throw, the unit that made that attack suffers a mortal wound after it has finished making all of its shooting attacks.",
    2,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "QUANTUM DEFLECTION",
    "Necron quantum shielding is a true marvel of techno-arcana, phasing into existence only at the moment of impact.",
    "Use this Stratagem when an enemy unit targets a VEHICLE in your army that has the Quantum Shielding ability, but before any hit rolls are made. Until the end of the phase, subtract 1 from rolls made for your vehicle’s Quantum Shielding ability to see if damage is ignored for each unsaved wound.",
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "EXTERMINATION PROTOCOLS",
    "Destroyers have sacrificed every last ember of their souls in order to pursue the obliteration of all mortal life.",
    "Use this Stratagem in your Shooting phase before shooting with a Destroyer Lord, a unit of Destroyers or a unit of Heavy Destroyers from your army. Re-roll failed hit and wound rolls for that unit until the end of the phase.",
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "THE PHAERON’S WILL",
    "The generals of the Necron Empire are peerless strategists who have overseen the obliteration of countless civilisations.",
    "Use this Stratagem after an OVERLORD from your army has used their My Will Be Done or Wave of Command ability. That model can immediately use that ability for a second time this turn.",
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "ADAPTIVE SUBROUTINES",
    "The Crypteks have invested their mechanical constructs with complex hunter-killer algorithms.",
    "Use this Stratagem after a CANOPTEK unit from your army has Advanced. That unit can still shoot and/or charge this turn.",
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "DIMENSIONAL CORRIDOR",
    "Necron Monoliths can redirect a tomb world’s forces by projecting a series of short-ranged dimensional portals.",
    'Use this Stratagem at the start of your Movement phase. Select a <DYNASTY> INFANTRY unit from your army that is more than 1" from any enemy models and remove it from the battlefield. Then, set the unit up again so that it is wholly within 3" of a <DYNASTY> Monolith from your army and more than 1" from any enemy models. That unit counts as having disembarked from the Monolith this turn and can move normally.',
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "JUDGEMENT OF THE TRIARCH",
    "Those who defy the will of the Triarch are subject to swift and merciless retribution.",
    "Use this Stratagem before a unit of Triarch Praetorians from your army shoots in the Shooting phase or fights in the Fight phase. Add 1 to hit rolls made for this unit until the end of the phase.",
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "GRAVITIC SINGULARITY",
    "A pulsing gravitic anomaly appears in the sky over the Obelisk, dragging enemy aircraft into its crushing embrace.",
    "Use this Stratagem at the start of your Shooting phase. Select an Obelisk from your army. When resolving this model’s Gravity Pulse ability this phase, each enemy unit within range that can FLY suffers D3 mortal wounds on a roll of 4+, instead of a roll of 6.",
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "COSMIC POWERS",
    "The powers of the C’tan are myriad and terrifying. To battle a fragment of these shackled star gods is to find reality unbound.",
    "Use this Stratagem at the start of your Movement phase. Select a C’TAN SHARD from your army. That model can replace one of its Powers of the C’tan with a different Power of the C’tan of your choice.",
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "METHODICAL DESTRUCTION",
    "The Sautekh Dynasty excel in systematic killing, marking each target until it is completely obliterated.",
    "Use this Stratagem after a SAUTEKH unit from your army has inflicted an unsaved wound on an enemy unit. Add 1 to hit rolls for friendly SAUTEKH units that target the same enemy unit this phase.",
    2,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "RECLAIM A LOST EMPIRE",
    "The Nihilakh seek to rule the galaxy, and once they have claimed a domain it is almost impossible to drive them from it.",
    'Use this Stratagem at the end of your turn. Select a NIHILAKH unit from your army. If the unit is within 3" of an objective marker, or if it did not move for any reason during its turn, then until the start of your next turn you can add 1 to saving throws made for that unit and increase the Attacks characteristic of models in that unit by 1.',
    2,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "TRANSLOCATION CRYPT",
    "Masters of teleportation technology, the Nephrekh ride into battle upon blinding beams of light.",
    'Use this Stratagem during deployment. You can set up a NEPHREKH INFANTRY or SWARM unit from your army in a translocation crypt instead of placing it on the battlefield. At the end of any of your Movement phases this unit can translocate into battle – set it up anywhere on the battlefield that is more than 9" away from any enemy models.',
    1,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "BLOOD RITES",
    "Novokh’s warriors have mastered the arts of martial warfare, and their deathless bodies allow them to fight on tirelessly.",
    "Use this Stratagem at the end of the Fight phase. Select a NOVOKH unit from your army – that unit can immediately fight for a second time.",
    3,
    true
FROM factions
WHERE factions.name = "Necrons";

INSERT INTO stratagems (
    id,
    faction,
    name,
    flavor,
    description,
    commandPts,
    allConditions
)
SELECT
    null,
    factions.id,
    "TALENT FOR ANNIHILATION",
    "The Mephrit seek not merely to defeat their foes, but to entirely expunge them from the face of the galaxy.",
    "Use this Stratagem before a MEPHRIT unit from your army attacks in the Shooting phase. Each time you make an unmodified hit roll of 6 for a model in that unit, you can make one additional hit roll for that model with the same weapon against the same target. These additional hit rolls cannot themselves generate any further hit rolls.",
    1,
    true
FROM factions
WHERE factions.name = "Necrons";
