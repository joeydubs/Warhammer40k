const FileImport = require('./fileimport')
const ModelsLib = require('./modellib')
const Unit = require('./unit')
const Army = require('./army')
//const model = require('./model.js')
const pathToResources = "/../resources/"

newImport = new FileImport()

newImport.importJson("stratagems.json", true, pathToResources)
allStratagems = newImport.library

newImport.importJson("models.json", true, pathToResources)
models = new ModelsLib(newImport.library)

myArmy = new Army()

function getStratagems(army) {
    stratagems = {}

    for (key in allStratagems) {
        stratagem = allStratagems[key]
        console.log(key)

        keywordsOK = true
        factionkeywordsOK = true
        wargearOK = true
        excludesOK = true

        addStratagem = false

        if (!addStratagem) {
            conditions = stratagem.conditions
            all = (conditions.includes("all")) ? true : false
            conditions.forEach(function (switchValue) {
                switch (switchValue) {
                    case "keywords":
                        //console.log("keywords case")
                        keywordsArray = stratagem[switchValue]
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
                                (army.keywords.includes(arrayVal) && !keywordsOK) ? keywordsOK = true : keywordsOK = false
                                //console.log("Array value: " + arrayVal)
                                //console.log("keywordsOK: " + keywordsOK)
                            })
                        }
                        break
                    case "wargear":
                        //console.log("wargear case")
                        wargearArray = stratagem[switchValue]
                        wargearArray.forEach(function (arrayVal) {
                            (army.wargear.includes(arrayVal)) ? wargearOK = true : wargearOK = false
                            //console.log("Array value: " + arrayVal)
                            //console.log("wargearOK: " + wargearOK)
                        })
                        break
                    case "factionkeywords":
                        //console.log("factionkeywords Case")
                        factionkeywordsArray = stratagem[switchValue]
                        factionkeywordsArray.forEach(function (arrayVal) {
                            (army.factionkeywords.includes(arrayVal)) ? factionkeywordsOK = true : factionkeywordsOK = false
                            //console.log("Array value: " + arrayVal)
                            //console.log("factionkeywordsOK: " + factionkeywordsOK)
                        })
                        break
                    case "excludes":
                        //console.log("excludes Case")
                        excludesArray = stratagem[switchValue]
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

function createUnit (modelArray) {
    unit = new Unit()

    modelArray.forEach(element => {
        model = models.getModel(element)
        unit.addModel(model)
    })

    myArmy.addUnit(unit)
}

function getModelList() {
    return models.library
}

function getArmy () {
    return myArmy
}

modelArray = ["immortal", "immortal", "immortal", "immortal", "immortal"]
modelArray2 = ["overlord"]
modelArray3 = ["stalker"]

createUnit(modelArray)
createUnit(modelArray2)

console.log(getArmy())