const FileImport = require('./fileimport')
const ModelsLib = require('./modellib')
const Unit = require('./unit')
const Army = require('./army')
//const model = require('./model.js')
const pathToResources = "/../resources/"

class ArmyManager {
    constructor() {
        this.newImport = new FileImport()

        this.newImport.importJson("stratagems.json", true, pathToResources)
        this.allStratagems = this.newImport.library

        this.newImport.importJson("models.json", true, pathToResources)
        this.models = new ModelsLib(this.newImport.library)

        this.army = new Army()
    }
    getStratagems(army) {
        var stratagems = {}

        for (key in allStratagems) {
            stratagem = allStratagems[key]
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
                                var keywordsOK = false
                                keywordsArray.forEach(function (arrayVal) {
                                    (army.keywords.includes(arrayVal) && !keywordsOK) ? keywordsOK = true : keywordsOK = false
                                    //console.log("Array value: " + arrayVal)
                                    //console.log("keywordsOK: " + keywordsOK)
                                })
                            }
                            break
                        case "wargear":
                            //console.log("wargear case")
                            var wargearArray = stratagem[switchValue]
                            wargearArray.forEach(function (arrayVal) {
                                (army.wargear.includes(arrayVal)) ? wargearOK = true : wargearOK = false
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
                                    if (army.wargear.includes(arrayVal)) {
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

    createUnit(modelArray) {
        var unit = new Unit()

        modelArray.forEach(element => {
            var model = this.models.getModel(element)
            unit.addModel(model)
        })

        this.army.addUnit(unit)
    }

    getModelList() {
        return this.models.library
    }

    getArmy() {
        return this.army
    }
}

module.exports = ArmyManager