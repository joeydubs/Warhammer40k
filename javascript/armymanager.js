const FileImport = require('./fileimport')
const ModelsLib = require('./modellib')
const WargearLib = require('./wargearlib')
const Unit = require('./unit')
const Army = require('./army')
const sqlite = require('sqlite3')
//const model = require('./model.js')
const pathToResources = "/../resources/"

class ArmyManager {
    constructor() {
        this.newImport = new FileImport()

        this.newImport.importJson("stratagems.json", true, pathToResources)
        this.allStratagems = this.newImport.library

        this.newImport.importJson("models.json", true, pathToResources)
        this.models = new ModelsLib(this.newImport.library)

        this.newImport.importJson("wargear.json", true, pathToResources)
        this.wargear = new WargearLib(this.newImport.library)

        this.army = new Army()

        this.db = new sqlite.Database("./resources/sql/warhammerdb.db", sqlite.OPEN_READWRITE, function (err) {
            if (err) {
                console.log("There was an error opening the Database. ")
                error = err.message
                console.log(error)
            } else {
                console.log("Database successfully opened.")
            }
        })

    }

    getStratagems(army) {
        var stratagems = {}
        var army = this.army

        for (var key in this.allStratagems) {
            var stratagem = this.allStratagems[key]
            console.log(key)

            var keywordsOK = true
            var factionkeywordsOK = true
            var wargearOK = true
            var excludesOK = true

            var addStratagem = false

            if (!addStratagem) {
                var conditions = stratagem.conditions
                var all = (conditions.includes("all")) ? true : false
                conditions.forEach(function (switchValue) {
                    switch (switchValue) {
                        case "keywords":
                            //console.log("keywords case")
                            var keywordsArray = stratagem[switchValue]
                            if (all) {
                                //console.log("all is true")
                                keywordsArray.forEach(function (arrayVal) {
                                    (army.keywords.includes(arrayVal) && keywordsOK) ? keywordsOK = true : keywordsOK = false
                                    //console.log("Array value: " + arrayVal)
                                    //console.log("keywordsOK: " + keywordsOK)
                                })
                            }
                            else {
                                //console.log("all is false")
                                keywordsOK = false
                                keywordsArray.forEach(function (arrayVal) {
                                    if (army.keywords.includes(arrayVal)) {
                                        keywordsOK = true
                                    }
                                    //console.log("Array value: " + arrayVal)
                                    //console.log("keywordsOK: " + keywordsOK)
                                })
                            }
                            break
                        case "wargear":
                            //console.log("wargear case")
                            var wargearArray = stratagem[switchValue]
                            wargearArray.forEach(function (arrayVal) {
                                (army.wargear[arrayVal]) ? wargearOK = true : wargearOK = false
                                //console.log("Array value: " + arrayVal)
                                //console.log("wargearOK: " + wargearOK)
                            })
                            break
                        case "factionkeywords":
                            //console.log("factionkeywords Case")
                            var factionkeywordsArray = stratagem[switchValue]
                            factionkeywordsArray.forEach(function (arrayVal) {
                                (army.factionkeywords.includes(arrayVal)) ? factionkeywordsOK = true : factionkeywordsOK = false
                                //console.log("Array value: " + arrayVal)
                                //console.log("factionkeywordsOK: " + factionkeywordsOK)
                            })
                            break
                        case "excludes":
                            //console.log("excludes Case")
                            var excludesArray = stratagem[switchValue]
                            excludesArray.forEach(function (arrayVal) {
                                if (excludesOK) {
                                    if (army.factionkeywords.includes(arrayVal)) {
                                        excludesOK = false
                                    }
                                    if (army.keywords.includes(arrayVal)) {
                                        excludesOK = false
                                    }
                                    if (army.wargear[arrayVal]) {
                                        excludesOK = false
                                    }

                                    //console.log("Array value: " + arrayVal)
                                    //console.log("excludesOK: " + excludesOK)
                                }
                            })
                            break
                        default:
                            console.log("Default Case. Switch value: " + switchValue)
                    }
                })
                addStratagem = keywordsOK && factionkeywordsOK && wargearOK && excludesOK
                console.log("Switches complete - addStratagem: " + addStratagem)
            }

            if (addStratagem) {
                stratagems[key] = stratagem
            }
        }

        return stratagems
    }

    getWargear() {
        return this.army.wargear
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
            SELECT NULL, units.id, subfactions.id, ${unit.points}
            FROM units, subfactions
            WHERE units.name = "${unitName}"
            AND subfactions.name = "${dynasty}";
        )`
        console.log(query)


        var callback = function (err) {
            if (err) {
                console.log(err.message)
            }
            else {
                var unitID = this.lastID
                console.log("Row added ID: " + unitID)
                for (var key in unit.details) {
                    var model = unit.details[key]
                    var modelID = parseInt(key)
                    var modelQty = parseInt(model.quantity)
                    console.log(key + " " + model)

                    var modelQuery = `INSERT INTO army_models VALUES (
                        ${unitID},
                        ${modelID},
                        ${modelQty}
                    )`
                    console.log(modelQuery)

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
                        console.log(gearQuery)

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

    setupUnit(unitName, unitID) {
        console.log("Row added ID: " + unitID)
        for (var key in unit[unitName]) {
            var model = unit[unitName][key]
            var modelID = parseInt(model)
            console.log(key + " " + model)

            var modelQuery = `INSERT INTO army_models VALUES (
                ${unitID},
                ${modelID},
                ${model.quantity}
            )`
            console.log(modelQuery)

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
            console.log(gearQuery)

            this.db.run(gearQuery, [], function (err) {
                if (err) {
                    console.log(err.message)
                }
            })
        }
    }

    removeUnit(id) {
        let query = `DELETE FROM user_army WHERE id = ${id}; DELETE FROM army_models WHERE armyUnitID = ${id}; DELETE FROM army_gear WHERE armyUnitID = ${id}`

        var callback = function (err) {
            if (err) {
                console.log(err.message)
            }
        }

        this.db.exec(query, callback)
    }

    getUnitList(respond) {
        let query = "SELECT name FROM units"

        var message = []

        var callback = function (err, row) {
            if (err) {
                console.log(err.message)
            }
            else {
                console.log(row.name)
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

        //return Object.keys(this.models.library)
    }

    getModelStats(model, respond) {
        let query =
            `SELECT name, damage, move, weapon, ballistic, strength, toughness, wounds, attacks, leadership, save
        FROM model_stats
        INNER JOIN models ON models.id = model_stats_join.model
        INNER JOIN model_stats_join ON model_stats_join.stats = model_stats.id
        WHERE models.name = "${model}"`
        console.log(query)

        var message = []

        var callback = function (err, row) {
            if (err) {
                console.log(err.message)
            }
            else {
                console.log(row)
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

        //return this.models.library[model]
    }

    getUnitDetails(unit, respond) {
        let query =
            `SELECT models.name AS name, models.id AS modelid, wargear.name AS gear, wargear.id AS gearid, units.description, options, min, max, models.points AS modelcost, wargear.points AS gearcost, power
            FROM wargear
            INNER JOIN model_wargear_join ON wargear.id = model_wargear_join.wargear
            INNER JOIN models ON model_wargear_join.model = models.id
            INNER JOIN model_unit_join ON model_unit_join.model = models.id
            INNER JOIN units ON model_unit_join.unit = units.id
            WHERE units.name = "${unit}"`
        console.log(query)

        var message = {
            models: {}
        }

        var callback = function (err, row) {
            if (err) {
                console.log(err.message)
            }
            else {
                console.log(row)

                if (!message.description) {
                    message["description"] = row.description
                }
                if (!message.options) {
                    message["options"] = row.options
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

        //return this.models.library[model]
    }

    getArmy(respond) {
        let query =
            `SELECT user_army.id, units.name AS unit, units.role, subfactions.name AS subfaction, models.name AS model, army_models.quantity, wargear.name AS wargear
            FROM user_army
            LEFT OUTER JOIN army_models ON user_army.id = army_models.armyUnitID
            LEFT OUTER JOIN army_gear ON army_gear.armyUnitID = user_army.id
            AND army_gear.modelID = army_models.modelID
            LEFT OUTER JOIN units ON user_army.unitID = units.id
            LEFT OUTER JOIN models ON army_models.modelID = models.id
            LEFT OUTER JOIN wargear ON army_gear.gearID = wargear.id
            LEFT OUTER JOIN subfactions ON user_army.subfactionID = subfactions.id;`

        console.log(query)

        var message = {}

        var callback = function (err, row) {
            if (err) {
                console.log(err.message)
            }
            else {
                console.log(row)
                var id = row.id
                if (!message[id]) {
                    message[id] = {
                        models: {}
                    }
                }

                if (!message[id]["models"]) {
                    message[id]["models"] = {}
                }

                let model = row.model
                if (!message[id]["models"][model]) {
                    message[id]["models"][model] = {
                        gear: []
                    }
                }

                message[id]["name"] = row.unit
                message[id]["subfaction"] = row.subfaction
                message[id]["role"] = row.role
                message[id]["models"][model]["quantity"] = row.quantity
                message[id]["models"][model]["gear"].push(row.wargear)
            }
        }

        var completion = function (err, rows) {
            if (err) {
                console.log(err.message)
            }
            respond(err, message)
        }

        this.db.each(query, callback, completion)

        //return this.army.units
    }

    dbtest(respond) {
        var message = ""

        let query = `SELECT * FROM models`

        var callback = function (err, row) {
            if (err) {
                console.log(err.message)
            }
            else {
                console.log(row)
                message += "Name: " + row.name + ", Role: " + row.role + ", Faction: " + row.faction
            }
        }

        var completion = function (err, rows) {
            if (err) {
                console.log(err.message)
                respond(err, err.message)
            }
            else {
                respond(null, message)
            }
        }

        this.db.each(query, callback, completion)
    }

    /*
    closeDB() {
        db.close(function (err) {
            if (err) {
                console.log("There was an error closing the Database.")
                console.log(err.message)
            } else {
                console.log("Database successfully closed.")
            }
        })
    }
    */
}

module.exports = ArmyManager