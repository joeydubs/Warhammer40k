const sqlite = require('sqlite3')

class ArmyManager {
    constructor() {
        this.db = new sqlite.Database("./resources/sql/warhammerdb.db", sqlite.OPEN_READWRITE, function (err) {
            if (err) {
                console.log("There was an error opening the Database. ")
                console.log(err.message)
            } else {
                console.log("Database successfully opened.")
            }
        })

    }

    getStratagems(respond) {
        let db = this.db
        let filterStratagems = this.filterStratagems

        let stratagemQuery = "SELECT * FROM stratagem_conditions"
        /*
        let keywordsQuery = `SELECT * FROM user_army
            LEFT OUTER JOIN unit_keywords_join ON user_army.unitID = unit_keywords_join.unitID
            LEFT OUTER JOIN keywords ON unit_keywords_join.keywordID = keywords.id`
        let factionKeywordsQuery = `SELECT * FROM user_army
            LEFT OUTER JOIN unit_faction_keywords_join ON user_army.unitID = unit_faction_keywords_join.unitID
            LEFT OUTER JOIN faction_keywords ON unit_faction_keywords_join.factionKeywordID = faction_keywords.id`
        let wargearQuery = "SELECT * FROM army_gear"
        let abilitiesQuery = `SELECT * FROM user_army
            LEFT OUTER JOIN unit_abilities_join ON user_army.unitID = unit_abilities_join.unitID
            LEFT OUTER JOIN abilities ON unit_abilities_join.abilityID = abilities.id`
        */
        let unitInfoQuery = `SELECT user_army.id AS armyUnitID, user_army.unitID, keywords.id AS keywordID, faction_keywords.id AS factionKeywordID, army_gear.gearID, abilities.id AS abilityID
       FROM user_army
       LEFT OUTER JOIN unit_keywords_join ON user_army.unitID = unit_keywords_join.unitID
       LEFT OUTER JOIN keywords ON unit_keywords_join.keywordID = keywords.id
       LEFT OUTER JOIN unit_faction_keywords_join ON user_army.unitID = unit_faction_keywords_join.unitID
       LEFT OUTER JOIN faction_keywords ON unit_faction_keywords_join.factionKeywordID = faction_keywords.id
       LEFT OUTER JOIN army_gear ON user_army.id = army_gear.armyUnitID
       LEFT OUTER JOIN unit_abilities_join ON user_army.unitID = unit_abilities_join.unitID
       LEFT OUTER JOIN abilities ON unit_abilities_join.abilityID = abilities.id`


        var message = {}

        var stratagems = {}
        var unitInfo = {}

        var callback = function (err, row) {
            if (err) {
                console.log(err.message)
            }

            if (!stratagems[row.stratagemID]) {
                stratagems[row.stratagemID] = {
                    includes: {
                        keywords: [],
                        factionkeywords: [],
                        wargear: [],
                        abilities: []
                    },
                    excludes: {
                        keywords: [],
                        factionkeywords: [],
                        wargear: [],
                        abilities: []
                    },
                    any: {
                        keywords: [],
                        factionkeywords: [],
                        wargear: [],
                        abilities: []
                    }
                }
            }

            if (row.keywordsID) {
                if (row.includes) {
                    stratagems[row.stratagemID].includes.keywords.push(row.keywordsID)
                }
                else if (row.excludes) {
                    stratagems[row.stratagemID].excludes.keywords.push(row.keywordsID)
                }
                else {
                    stratagems[row.stratagemID].any.keywords.push(row.keywordsID)
                }
            }
            else if (row.faction_keywordsID) {
                if (row.includes) {
                    stratagems[row.stratagemID].includes.factionkeywords.push(row.faction_keywordsID)
                }
                else if (row.excludes) {
                    stratagems[row.stratagemID].excludes.factionkeywords.push(row.faction_keywordsID)
                }
                else {
                    stratagems[row.stratagemID].any.factionkeywords.push(row.faction_keywordsID)
                }
            }
            else if (row.wargearID) {
                if (row.includes) {
                    stratagems[row.stratagemID].includes.wargear.push(row.wargearID)
                }
                else if (row.excludes) {
                    stratagems[row.stratagemID].excludes.wargear.push(row.wargearID)
                }
                else {
                    stratagems[row.stratagemID].any.wargear.push(row.wargearID)
                }
            }
            else if (row.abilitiesID) {
                if (row.includes) {
                    stratagems[row.stratagemID].includes.abilities.push(row.abilitiesID)
                }
                else if (row.excludes) {
                    stratagems[row.stratagemID].excludes.abilities.push(row.abilitiesID)
                }
                else {
                    stratagems[row.stratagemID].any.abilities.push(row.abilitiesID)
                }
            }
        }

        var complete = function (err, rows) {
            if (err) {
                console.log(err.message)
            }

            var callback = function (err, row) {
                if (err) {
                    console.log(err.message)
                }

                if (!unitInfo[row.armyUnitID]) {
                    unitInfo[row.armyUnitID] = {
                        keywords: [],
                        factionkeywords: [],
                        wargear: [],
                        abilities: []
                    }
                }
                if (!unitInfo[row.armyUnitID].keywords.includes(row.keywordID)) {
                    unitInfo[row.armyUnitID].keywords.push(row.keywordID)
                }
                if (!unitInfo[row.armyUnitID].factionkeywords.includes(row.factionKeywordID)) {
                    unitInfo[row.armyUnitID].factionkeywords.push(row.factionKeywordID)
                }
                if (!unitInfo[row.armyUnitID].wargear.includes(row.gearID)) {
                    unitInfo[row.armyUnitID].wargear.push(row.gearID)
                }
                if (!unitInfo[row.armyUnitID].abilities.includes(row.abilityID)) {
                    unitInfo[row.armyUnitID].abilities.push(row.abilityID)
                }
            }

            var completion = function (err) {
                if (err) {
                    console.log(err.message)
                }

                let filteredStratagems = filterStratagems(stratagems, unitInfo)
                respond(err, filteredStratagems)
            }

            db.each(unitInfoQuery, callback, completion)
        }

        db.each(stratagemQuery, callback, complete)
    }

    filterStratagems(stratagems, unitInfo) {
        var filteredStratagems = []

        for (let key in stratagems) {
            let stratagem = stratagems[key]

            var includesOK = (
                stratagem.includes.keywords.length == 0 ?
                    stratagem.includes.factionkeywords.length == 0 ?
                        stratagem.includes.wargear.length == 0 ?
                            stratagem.includes.abilities.length == 0 ?
                                true : false : false : false : false
            )
            var anyOK = (
                stratagem.any.keywords.length == 0 ?
                    stratagem.any.factionkeywords.length == 0 ?
                        stratagem.any.wargear.length == 0 ?
                            stratagem.any.abilities.length == 0 ?
                                true : false : false : false : false
            )

            for (let unit in unitInfo) {
                let info = unitInfo[unit]

                if (!includesOK) {
                    for (let group in stratagem.includes) {
                        let conditionGroup = stratagem.includes[group]
                        let conditionsMet = []

                        for (let cond in conditionGroup) {
                            let condition = conditionGroup[cond]

                            if (info[group].includes(condition)) {
                                var excludesOK = true

                                for (let exGroup in stratagem.excludes) {
                                    let excludesGroup = stratagem.excludes[exGroup]

                                    for (let exCon in excludesGroup) {
                                        let excludesCondition = excludesGroup[exCon]

                                        if (info[exGroup].includes(excludesCondition)) {
                                            excludesOK = false
                                        }
                                    }
                                }

                                if (excludesOK) {
                                    conditionsMet.push(condition)
                                }
                            }
                        }

                        for (let con in conditionsMet) {
                            let conditionMet = conditionsMet[con]
                            let toRemove = stratagem.includes[group].indexOf(conditionMet)
                            if (toRemove >= 0) {
                                stratagem.includes[group].splice(toRemove, 1)
                            }
                            includesOK = (
                                stratagem.includes.keywords.length == 0 ?
                                    stratagem.includes.factionkeywords.length == 0 ?
                                        stratagem.includes.wargear.length == 0 ?
                                            stratagem.includes.abilities.length == 0 ?
                                                true : false : false : false : false
                            )
                        }
                    }
                }

                if (!anyOK) {
                    for (let group in stratagem.any) {
                        let conditionGroup = stratagem.any[group]

                        for (let cond in conditionGroup) {
                            let condition = conditionGroup[cond]

                            if (info[group].includes(condition)) {
                                anyOK = true
                            }
                        }
                    }
                }
            }

            var addStratagem = includesOK && anyOK

            if (addStratagem) {
                filteredStratagems.push(key)
            }
        }

        return filteredStratagems
    }

    getStratagemDetails(stratagemID, respond) {
        let query = `SELECT * FROM stratagems WHERE id = ${stratagemID}`

        var callback = function (err, row) {
            if (err) {
                console.log(err.message)
            }
            else {
                respond(err, row)
            }
        }

        this.db.get(query, callback)
    }

    createUnit(unit, dynasty) {
        let db = this.db
        let unitName = unit.name

        let query = `INSERT INTO user_army (
                id,
                unitID,
                subfactionID,
                points
            )
            SELECT NULL, units.id, NULL, ${unit.points}
            FROM units
            WHERE units.name = "${unitName}"`
            //AND subfactions.name = "${dynasty}"`


        var callback = function (err) {
            if (err) {
                console.log(err.message)
            }
            else {
                var unitID = this.lastID

                let subfactionQuery = `INSERT INTO army_faction_keywords (armyUnitID, factionKeywordID)
                    SELECT ${unitID}, subfactions.id
                    FROM subfactions
                    WHERE subfactions.name = "${dynasty}"`

                db.run(subfactionQuery, [], function (err) {
                    if (err) {
                        console.log(err.message)
                    }
                })

                for (var key in unit.details) {
                    var model = unit.details[key]
                    var modelID = parseInt(key)
                    var modelQty = parseInt(model.quantity)

                    var modelQuery = `INSERT INTO army_models VALUES (
                        ${unitID},
                        ${modelID},
                        ${modelQty})`

                    db.run(modelQuery, [], function (err) {
                        if (err) {
                            console.log(err.message)
                        }
                    })

                    if (model.gear.length > 0) {
                        var gearQuery = "INSERT INTO army_gear VALUES "
                        for (var item in model.gear) {
                            var gearID = parseInt(model.gear[item])
                            if (item == model.gear.length - 1) {
                                gearQuery += `(${unitID}, ${modelID}, ${gearID})`
                            }
                            else {
                                gearQuery += `(${unitID}, ${modelID}, ${gearID}), `
                            }
                        }

                        db.run(gearQuery, [], function (err) {
                            if (err) {
                                console.log(err.message)
                            }
                        })
                    }
                }
            }
        }

        db.run(query, [], callback)
    }

    // Unused. I was trying to separate this code out of the callback in the createUnit function above.
    setupUnit(unitName, unitID) {
        for (var key in unit[unitName]) {
            var model = unit[unitName][key]
            var modelID = parseInt(model)

            var modelQuery = `INSERT INTO army_models VALUES (
                ${unitID},
                ${modelID},
                ${model.quantity})`

            this.db.run(modelQuery, [], function (err) {
                if (err) {
                    console.log(err.message)
                }
            })

            var gearQuery = "INSERT INTO army_gear VALUES "
            for (var item in model.gear) {
                var gearID = parseInt(model.gear[item])
                if (item == model.gear.length - 1) {
                    gearQuery += `(${unitID}, ${modelID}, ${gearID})`
                }
                else {
                    gearQuery += `(${unitID}, ${modelID}, ${gearID}), `
                }
            }

            this.db.run(gearQuery, [], function (err) {
                if (err) {
                    console.log(err.message)
                }
            })
        }
    }

    removeUnit(id) {
        let query = `DELETE FROM user_army WHERE id = ${id};
            DELETE FROM army_models WHERE armyUnitID = ${id};
            DELETE FROM army_gear WHERE armyUnitID = ${id};
            DELETE FROM army_faction_keywords WHERE armyUnitID = ${id};`

        var callback = function (err) {
            if (err) {
                console.log(err.message)
            }
        }

        this.db.exec(query, callback)
    }

    getFactionList(respond) {
        let query = "SELECT name FROM factions WHERE name <> 'Any'"

        var message = []

        var callback = function (err, row) {
            if (err) {
                console.log(err.message)
            }
            else {
                message.push(row.name)
            }
        }

        var completion = function (err, rows) {
            if (err) {
                console.log(err.message)
            }
            respond(err, message)
        }

        this.db.each(query, callback, completion)
    }

    getUnitList(faction, role, respond) {
        var query = `SELECT units.name
            FROM units
            INNER JOIN factions ON units.factionID = factions.id
            WHERE factions.name = "${faction}"`

        if (role != "Any") {
            query += ` AND units.role = "${role}"`
        }
        console.log(query)

        var message = []

        var callback = function (err, row) {
            if (err) {
                console.log(err.message)
            }
            else {
                message.push(row.name)
            }
        }

        var completion = function (err, rows) {
            if (err) {
                console.log(err.message)
            }
            respond(err, message)
        }

        this.db.each(query, callback, completion)
    }

    getSubfactions(faction, respond) {
        let query = `SELECT name
            FROM subfactions
            WHERE faction = "${faction}"`

        var message = []

        let callback = function (err, row) {
            if (err) {
                console.log(err.message)
            }
            else {
                message.push(row.name)
            }
        }

        let completion = function (err, rows) {
            if (err) {
                console.log(err.message)
            }
            respond(err, message)
        }

        this.db.each(query, callback, completion)
    }

    getModelStats(unit, respond) {
        let query =
            `SELECT models.name, model_stats.id, damage, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, save
        FROM model_stats
        INNER JOIN models ON models.id = model_stats.modelID
        INNER JOIN model_unit_join ON models.id = model_unit_join.model
        INNER JOIN units ON units.id = model_unit_join.unit
        WHERE units.name = "${unit}"
        ORDER BY model_stats.id`

        var message = []

        var callback = function (err, row) {
            if (err) {
                console.log(err.message)
            }
            else {
                message.push(row)
            }
        }

        var completion = function (err, rows) {
            if (err) {
                console.log(err.message)
            }
            respond(err, message)
        }

        this.db.each(query, callback, completion)
    }

    getUnitDetails(unit, respond) {
        let query =
            `SELECT models.name AS name, models.id AS modelid, faction_keywords.name AS factionKeyword, wargear.name AS gear, wargear.id AS gearid, units.description, options, min, max, models.points AS modelcost, wargear.points AS gearcost, power
            FROM wargear
            INNER JOIN model_wargear_join ON wargear.id = model_wargear_join.wargear
            INNER JOIN models ON model_wargear_join.model = models.id
            INNER JOIN model_unit_join ON model_unit_join.model = models.id
            INNER JOIN units ON model_unit_join.unit = units.id
            LEFT OUTER JOIN unit_faction_keywords_join ON unit_faction_keywords_join.unitID = units.id
            LEFT OUTER JOIN faction_keywords ON unit_faction_keywords_join.factionKeywordID = faction_keywords.id
            WHERE units.name = "${unit}"`

        var message = {
            models: {},
            factionKeywords: []
        }

        var callback = function (err, row) {
            if (err) {
                console.log(err.message)
            }
            else {
                if (!message.description) {
                    message["description"] = row.description
                }
                if (!message.options) {
                    message["options"] = row.options
                }

                if (!message.factionKeywords.includes(row.factionKeyword)) {
                    message.factionKeywords.push(row.factionKeyword)
                }

                var name = row.name
                if (!message.models[name]) {
                    var model = {
                        gear: {}
                    }
                    message.models[name] = model
                }
                message.models[name]["id"] = row.modelid
                message.models[name]["min"] = row.min
                message.models[name]["max"] = row.max
                message.models[name]["cost"] = row.modelcost
                message.models[name]["power"] = row.power
                var gear = {
                    cost: row.gearcost,
                    id: row.gearid
                }
                message.models[name]["gear"][row.gear] = gear
            }
        }

        var completion = function (err, rows) {
            if (err) {
                console.log(err.message)
            }
            respond(err, message)
        }

        this.db.each(query, callback, completion)
    }

    getArmy(respond) {
        let query =
            `SELECT user_army.id, user_army.points, units.name AS unit, units.role, subfactions.name AS subfaction, models.name AS model, army_models.quantity, model_stats.move, model_stats.weapon, model_stats.ballistic, model_stats.strength, model_stats.toughness, model_stats.wounds, model_stats.attacks, model_stats.leadership, model_stats.save, wargear.name AS wargear, wargear_stats.profile AS wargearProfile, wargear_stats.range AS wargearRange, wargear_stats.type AS wargearType, wargear_stats.strength AS wargearStrength, wargear_stats.armorPen AS wargearArmorPen, wargear_stats.damage AS wargearDamage, wargear_stats.abilities AS wargearAbilities, abilities.name as abilityName, abilities.ability as abilityDescription
            FROM user_army
            LEFT OUTER JOIN army_models ON user_army.id = army_models.armyUnitID
            LEFT OUTER JOIN army_gear ON army_gear.armyUnitID = user_army.id
            AND army_gear.modelID = army_models.modelID
            LEFT OUTER JOIN units ON user_army.unitID = units.id
            LEFT OUTER JOIN models ON army_models.modelID = models.id
            LEFT OUTER JOIN model_stats ON models.id = model_stats.modelID
            LEFT OUTER JOIN wargear ON army_gear.gearID = wargear.id
            LEFT OUTER JOIN wargear_stats ON wargear.id = wargear_stats.wargearID
            LEFT OUTER JOIN unit_abilities_join ON unit_abilities_join.unitID =units.id
            LEFT OUTER JOIN abilities ON unit_abilities_join.abilityID = abilities.id
            LEFT OUTER JOIN army_faction_keywords ON user_army.id = army_faction_keywords.armyUnitID
            LEFT OUTER JOIN subfactions ON army_faction_keywords.factionKeywordID = subfactions.id`

        var message = {}

        var callback = function (err, row) {
            if (err) {
                console.log(err.message)
            }
            else {
                var id = row.id
                if (!message[id]) {
                    message[id] = {
                        models: {},
                        abilities: {}
                    }
                }

                if (!message[id]["models"]) {
                    message[id]["models"] = {}
                }

                let model = row.model
                if (!message[id]["models"][model]) {
                    message[id]["models"][model] = {
                        gear: {}
                    }
                }

                message[id]["name"] = row.unit
                message[id]["subfaction"] = row.subfaction
                message[id]["role"] = row.role
                message[id]["points"] = row.points

                message[id].abilities[row.abilityName] = row.abilityDescription

                message[id]["models"][model]["quantity"] = row.quantity
                message[id]["models"][model]["move"] = row.move
                message[id]["models"][model]["weapon"] = row.weapon
                message[id]["models"][model]["ballistic"] = row.ballistic
                message[id]["models"][model]["strength"] = row.strength
                message[id]["models"][model]["toughness"] = row.toughness
                message[id]["models"][model]["wounds"] = row.wounds
                message[id]["models"][model]["attacks"] = row.attacks
                message[id]["models"][model]["leadership"] = row.leadership
                message[id]["models"][model]["save"] = row.save


                if (row.wargear != null) {
                    if (!message[id]["models"][model]["gear"][row.wargear]) {
                        message[id]["models"][model]["gear"][row.wargear] = {}
                    }
                    message[id]["models"][model]["gear"][row.wargear][row.wargearProfile] = {
                        range: row.wargearRange,
                        type: row.wargearType,
                        strength: row.wargearStrength,
                        armorPen: row.wargearArmorPen,
                        damage: row.wargearDamage,
                        abilities: row.wargearAbilities
                    }
                }
            }
        }

        var completion = function (err, rows) {
            if (err) {
                console.log(err.message)
            }
            respond(err, message)
        }

        this.db.each(query, callback, completion)
    }
}

module.exports = ArmyManager