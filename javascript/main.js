const fileImport = require('./fileimport')
const modelsLib = require('./modellib')
const unit = require('./unit')
//const model = require('./model.js')
const pathToResources = "/../resources/"

newImport = new fileImport()

newImport.importJson("stratagems.json", true, pathToResources)
allStratagems = newImport.library

function getStratagems(army) {
    stratagems = {}

    for (key in allStratagems) {
        stratagem = allStratagems[key]
        console.log(stratagem)

        keywordsOK = true
        factionkeywordsOK = true
        wargearOK = true
        excludesOK = true

        addStratagem = false

        for (i = 0; i < army.models.length; i++) {
            model = army.models[i]
            console.log(model.name)
            if (!addStratagem) {
                conditions = stratagem.conditions
                all = (conditions.includes("all")) ? true : false
                conditions.forEach(function (switchValue) {
                    switch (switchValue) {
                        case "keywords":
                            console.log("keywords case")
                            keywordsArray = stratagem[switchValue]
                            if (all) {
                                console.log("all is true")
                                keywordsArray.forEach(function (arrayVal) {
                                    (model.keywords.includes(arrayVal) && addStratagem) ? keywordsOK = true : keywordsOK = false
                                    console.log("Array value: " + arrayVal)
                                    console.log("keywordsOK: " + keywordsOK)
                                })
                            }
                            else {
                                console.log("all is false")
                                keywordsOK = false
                                keywordsArray.forEach(function (arrayVal) {
                                    (model.keywords.includes(arrayVal) && !keywordsOK) ? keywordsOK = true : keywordsOK = false
                                    console.log("Array value: " + arrayVal)
                                    console.log("keywordsOK: " + keywordsOK)
                                })
                            }
                            break
                        case "wargear":
                            console.log("wargear case")
                            wargearArray = stratagem[switchValue]
                            wargearArray.forEach(function (arrayVal) {
                                (model.wargear.includes(arrayVal)) ? wargearOK = true : wargearOK = false
                                console.log("Array value: " + arrayVal)
                                console.log("wargearOK: " + wargearOK)
                            })
                            break
                        case "factionkeywords":
                            console.log("factionkeywords Case")
                            factionkeywordsArray = stratagem[switchValue]
                            factionkeywordsArray.forEach(function (arrayVal) {
                                (model.factionkeywords.includes(arrayVal)) ? factionkeywordsOK = true : factionkeywordsOK = false
                                console.log("Array value: " + arrayVal)
                                console.log("factionkeywordsOK: " + factionkeywordsOK)
                            })
                            break
                        case "excludes":
                            console.log("excludes Case")
                            excludesArray = stratagem[switchValue]
                            excludesArray.forEach(function (arrayVal) {
                                if (excludesOK) {
                                    if (model.factionkeywords.includes(arrayVal)) {
                                        excludesOK = false
                                    }
                                    if (model.keywords.includes(arrayVal)) {
                                        excludesOK = false
                                    }
                                    if (model.wargear.includes(arrayVal)) {
                                        excludesOK = false
                                    }
                                    
                                    console.log("Array value: " + arrayVal)
                                    console.log("excludesOK: " + excludesOK)
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
        }

        if (addStratagem) {
            stratagems[key] = stratagem
        }
    }

    return stratagems
}

newImport.importJson("models.json", true, pathToResources)
models = new modelsLib(newImport.library)

var unit1 = new unit()
var unit2 = new unit()

unit1.setFaction("Mephrit")
unit2.setFaction("Mephrit")

unit1.addModel(models.getModel("nightbringer"))
unit1.addModel(models.getModel("monolith"))
//unit1.addModel(models.getModel("lychguard"))

unit2.addModel(models.getModel("overlord"))

console.log(unit1.models)
console.log(unit1.getSize())
console.log(unit1.getRole())
console.log(unit1.keywords)
console.log(unit1.factionkeywords)
console.log(unit2.models)
console.log(unit2.getRole())
console.log(unit2.keywords)
console.log(unit2.factionkeywords)

console.log(getStratagems(unit1))