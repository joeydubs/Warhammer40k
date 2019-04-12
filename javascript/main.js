const fileImport = require('./fileimport')
const modelsLib = require('./modellib')
const unit = require('./unit')
const army = require('./army')
//const model = require('./model.js')
const pathToResources = "/../resources/"

newImport = new fileImport()

newImport.importJson("stratagems.json", true, pathToResources)
allStratagems = newImport.library

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

newImport.importJson("models.json", true, pathToResources)
models = new modelsLib(newImport.library)

var unit1 = new unit()
var unit2 = new unit()

unit1.setFaction("Mephrit")
unit2.setFaction("Mephrit")

unit1.addModel(models.getModel("nightbringer"))
unit1.addModel(models.getModel("monolith"))
unit1.addModel(models.getModel("lychguard"))

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

//console.log(getStratagems(unit1))

myArmy = new army()

myArmy.addUnit(unit1)
myArmy.addUnit(unit2)

console.log(getStratagems(myArmy))