DROP TABLE IF EXISTS stratagem_conditions;

CREATE TABLE stratagem_conditions (
    stratagemID INTEGER,
    keywordsID INTEGER,
    faction_keywordsID INTEGER,
    wargearID INTEGER,
    abilitiesID INTEGER,
    includes BOOLEAN,
    excludes BOOLEAN,
    any BOOLEAN
);

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, null, null, null, false, false, false
FROM stratagems
WHERE stratagems.name = "COMMAND RE-ROLL";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, null, null, null, false, false, false
FROM stratagems
WHERE stratagems.name = "COUNTER-OFFENSIVE";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, null, null, null, false, false, false
FROM stratagems
WHERE stratagems.name = "INSANE BRAVERY";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, null, null, abilities.id, true, false, false
FROM stratagems, abilities
WHERE stratagems.name = "ENHANCED REANIMATION PROTOCOLS"
AND abilities.name = "Reanimation Protocols";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, faction_keywords.id, null, null, true, false, false
FROM stratagems, faction_keywords
WHERE stratagems.name = "WRATH OF THE C’TAN"
AND faction_keywords.name = "C'tan Shards";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, false, false, true
FROM stratagems, keywords
WHERE stratagems.name = "EMERGENCY INVASION BEAM"
AND keywords.name = "Night Scythe";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, false, false, true
FROM stratagems, keywords
WHERE stratagems.name = "EMERGENCY INVASION BEAM"
AND keywords.name = "Monolith";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "AMALGAMATED TARGETING DATA"
AND keywords.name = "Doom Scythe";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "DYNASTIC HEIRLOOMS"
AND keywords.name = "Character";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, false, false, true
FROM stratagems, keywords
WHERE stratagems.name = "ENHANCED INVASION BEAM"
AND keywords.name = "Monolith";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, false, false, true
FROM stratagems, keywords
WHERE stratagems.name = "ENHANCED INVASION BEAM"
AND keywords.name = "Night Scythe";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, null, null, null, false, false, false
FROM stratagems
WHERE stratagems.name = "SOLAR PULSE";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "RESURRECTION PROTOCOLS"
AND keywords.name = "Character";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, false, true, false
FROM stratagems, keywords
WHERE stratagems.name = "RESURRECTION PROTOCOLS"
AND keywords.name = "Trazyn the Infinite";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, faction_keywords.id, null, null, false, true, false
FROM stratagems, faction_keywords
WHERE stratagems.name = "RESURRECTION PROTOCOLS"
AND faction_keywords.name = "C'tan Shards";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "DAMAGE CONTROL OVERRIDE"
AND keywords.name = "Vehicle";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, faction_keywords.id, null, null, true, false, false
FROM stratagems, faction_keywords
WHERE stratagems.name = "REPAIR SUBROUTINES"
AND faction_keywords.name = "Canoptek";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "SELF-DESTRUCTION"
AND keywords.name = "Canoptek Scarabs";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "DISRUPTION FIELDS"
AND keywords.name = "Infantry";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "ENTROPIC STRIKE"
AND keywords.name = "Character";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, null, wargear.id, null, true, false, false
FROM stratagems, wargear
WHERE stratagems.name = "DISPERSION FIELD AMPLIFICATION"
AND wargear.name = "Dispersion Shield";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "DISPERSION FIELD AMPLIFICATION"
AND keywords.name = "Lychguard";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "QUANTUM DEFLECTION"
AND keywords.name = "Vehicle";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, null, null, abilities.id, true, false, false
FROM stratagems, abilities
WHERE stratagems.name = "QUANTUM DEFLECTION"
AND abilities.name = "Quantum Shielding";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, false, false, true
FROM stratagems, keywords
WHERE stratagems.name = "EXTERMINATION PROTOCOLS"
AND keywords.name = "Destroyer Lord";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, false, false, true
FROM stratagems, keywords
WHERE stratagems.name = "EXTERMINATION PROTOCOLS"
AND keywords.name = "Destroyers";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, false, false, true
FROM stratagems, keywords
WHERE stratagems.name = "EXTERMINATION PROTOCOLS"
AND keywords.name = "Heavy Destroyers";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "THE PHAERON’S WILL"
AND keywords.name = "Overlord";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, faction_keywords.id, null, null, true, false, false
FROM stratagems, faction_keywords
WHERE stratagems.name = "ADAPTIVE SUBROUTINES"
AND faction_keywords.name = "Canoptek";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "DIMENSIONAL CORRIDOR"
AND keywords.name = "Infantry";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "DIMENSIONAL CORRIDOR"
AND keywords.name = "Monolith";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "JUDGEMENT OF THE TRIARCH"
AND keywords.name = "Triarch Praetorians";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, true, false, false
FROM stratagems, keywords
WHERE stratagems.name = "GRAVITIC SINGULARITY"
AND keywords.name = "Obelisk";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, faction_keywords.id, null, null, true, false, false
FROM stratagems, faction_keywords
WHERE stratagems.name = "COSMIC POWERS"
AND faction_keywords.name = "C'tan Shards";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, faction_keywords.id, null, null, true, false, false
FROM stratagems, faction_keywords
WHERE stratagems.name = "METHODICAL DESTRUCTION"
AND faction_keywords.name = "Sautekh";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, faction_keywords.id, null, null, true, false, false
FROM stratagems, faction_keywords
WHERE stratagems.name = "RECLAIM A LOST EMPIRE"
AND faction_keywords.name = "Nihilakh";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, faction_keywords.id, null, null, true, false, false
FROM stratagems, faction_keywords
WHERE stratagems.name = "TRANSLOCATION CRYPT"
AND faction_keywords.name = "Nephrekh";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, false, false, true
FROM stratagems, keywords
WHERE stratagems.name = "TRANSLOCATION CRYPT"
AND keywords.name = "Infantry";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, keywords.id, null, null, null, false, false, true
FROM stratagems, keywords
WHERE stratagems.name = "TRANSLOCATION CRYPT"
AND keywords.name = "Swarm";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, faction_keywords.id, null, null, true, false, false
FROM stratagems, faction_keywords
WHERE stratagems.name = "BLOOD RITES"
AND faction_keywords.name = "Novokh";

INSERT INTO stratagem_conditions (
    stratagemID,
    keywordsID,
    faction_keywordsID,
    wargearID,
    abilitiesID,
    includes,
    excludes,
    any
)
SELECT stratagems.id, null, faction_keywords.id, null, null, true, false, false
FROM stratagems, faction_keywords
WHERE stratagems.name = "TALENT FOR ANNIHILATION"
AND faction_keywords.name = "Mephrit";
