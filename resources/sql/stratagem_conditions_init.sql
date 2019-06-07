DROP TABLE stratagem_conditions;

CREATE TABLE stratagem_conditions (
    stratagemID INTEGER,
    keywordsID INTEGER,
    factionKeywordsID INTEGER,
    wargearID INTEGER,
    abilitiesID INTEGER,
    includes BOOLEAN,
    excludes BOOLEAN,
    any BOOLEAN
);

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "COMMAND RE-ROLL"
AND keywords.name = null
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "COUNTER-OFFENSIVE"
AND keywords.name = null
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "INSANE BRAVERY"
AND keywords.name = null
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "ENHANCED REANIMATION PROTOCOLS"
AND keywords.name = null
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = "Reanimation Protocol";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "WRATH OF THE C’TAN"
AND keywords.name = null
AND faction_keywords.name = "C'tan Shards"
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, false, true
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "EMERGENCY INVASION BEAM"
AND keywords.name = "Night Scythe"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, false, true
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "EMERGENCY INVASION BEAM"
AND keywords.name = "Monolith"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "AMALGAMATED TARGETING DATA"
AND keywords.name = "Doom Scythe"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "DYNASTIC HEIRLOOMS"
AND keywords.name = "Character"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, false, true
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "ENHANCED INVASION BEAM"
AND keywords.name = "Monolith"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, false, true
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "ENHANCED INVASION BEAM"
AND keywords.name = "Night Scythe"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "SOLAR PULSE"
AND keywords.name = null
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "RESURRECTION PROTOCOLS"
AND keywords.name = "Character"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, true, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "RESURRECTION PROTOCOLS"
AND keywords.name = "Trazyn the Infinite"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, true, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "RESURRECTION PROTOCOLS"
AND keywords.name = null
AND faction_keywords.name = "C'tan Shards"
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "DAMAGE CONTROL OVERRIDE"
AND keywords.name = "Vehicle"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "DAMAGE CONTROL OVERRIDE"
AND keywords.name = "Vehicle"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "REPAIR SUBROUTINES"
AND keywords.name = null
AND faction_keywords.name = "Canoptek"
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "SELF-DESTRUCTION"
AND keywords.name = "Canoptek Scarabs"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "DISRUPTION FIELDS"
AND keywords.name = "Infantry"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "ENTROPIC STRIKE"
AND keywords.name = "Character"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "DISPERSION FIELD AMPLIFICATION"
AND keywords.name = null
AND faction_keywords.name = null
AND wargear.name = "Dispersion Shield"
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "DISPERSION FIELD AMPLIFICATION"
AND keywords.name = "Lychguard"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "QUANTUM DEFLECTION"
AND keywords.name = "Vehicle"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "QUANTUM DEFLECTION"
AND keywords.name = null
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = "Quantum Shielding";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, false, true
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "EXTERMINATION PROTOCOLS"
AND keywords.name = "Destroyer Lord"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, false, true
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "EXTERMINATION PROTOCOLS"
AND keywords.name = "Destroyers"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, false, true
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "EXTERMINATION PROTOCOLS"
AND keywords.name = "Heavy Destroyers"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "THE PHAERON’S WILL"
AND keywords.name = "Overlord"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "ADAPTIVE SUBROUTINES"
AND keywords.name = null
AND faction_keywords.name = "Canoptek"
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "DIMENSIONAL CORRIDOR"
AND keywords.name = "Infantry"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "DIMENSIONAL CORRIDOR"
AND keywords.name = "Monolith"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "JUDGEMENT OF THE TRIARCH"
AND keywords.name = "Triarch Praetorians"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "GRAVITIC SINGULARITY"
AND keywords.name = "Obelisk"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "COSMIC POWERS"
AND keywords.name = null
AND faction_keywords.name = "C'tan Shards"
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "METHODICAL DESTRUCTION"
AND keywords.name = null
AND faction_keywords.name = "Sautekh"
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "RECLAIM A LOST EMPIRE"
AND keywords.name = null
AND faction_keywords.name = "Nihilakh"
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "TRANSLOCATION CRYPT"
AND keywords.name = null
AND faction_keywords.name = "Nephrekh"
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, false, true
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "TRANSLOCATION CRYPT"
AND keywords.name = "Infantry"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, false, false, true
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "TRANSLOCATION CRYPT"
AND keywords.name = "Swarm"
AND faction_keywords.name = null
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "BLOOD RITES"
AND keywords.name = null
AND faction_keywords.name = "Novokh"
AND wargear.name = null
AND abilities.name = null;

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    factionKeywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, factionkeywords.id, wargear.id, abilities.id, true, false, false
FROM stratagems, keywords, factionkeywords, wargear
WHERE stratagems.name = "TALENT FOR ANNIHILATION"
AND keywords.name = null
AND faction_keywords.name = "Mephrit"
AND wargear.name = null
AND abilities.name = null;

