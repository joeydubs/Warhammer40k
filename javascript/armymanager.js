const FileImport = require('./fileimport')
const ModelsLib = require('./modellib')
const WargearLib = require('./wargearlib')
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

        this.newImport.importJson("wargear.json", true, pathToResources)
        this.wargear = new WargearLib(this.newImport.library)

        this.army = new Army()
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

    getWargear() {
        return this.army.wargear
    }

    createUnit(modelArray, dynasty) {
        var unit = new Unit()
        unit.setFaction(dynasty)

        modelArray.forEach(element => {
            var model = this.models.getModel(element.model)

            if (element.any) {
                model.wargear = model.wargear.concat(element.any)

            }
            if (element.or) {
                model.wargear = model.wargear.concat(element.or)

            }

            unit.addModel(model)
        })

        this.army.addUnit(unit)
        
        for (var key in this.army.wargear) {
            this.army.wargear[key] = this.wargear.getWargear(key)
        }
    }

    removeUnit(index) {
        this.army.removeUnit(index)
    }

    getModelList() {
        return Object.keys(this.models.library)
    }

    getModelStats(model) {
        return this.models.library[model]
    }

    getArmy() {
        return this.army.units
    }
}

module.exports = ArmyManager