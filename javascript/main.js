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
        conditions = stratagem.conditions
        console.log(conditions.includes("all"))
        all = (conditions.includes("all")) ? true : false
        keywordsOK = true
        factionkeywordsOK = true
        abilitiesOK = true
        wargearOK = true
        addStratagem = true
        conditions.forEach(function (switchValue) {
            if (addStratagem) {
                switch (switchValue) {
                    case "keywords":
                        console.log("keywords case")
                        keywordsArray = stratagem[switchValue]
                        if (all) {
                            console.log("all is true")
                            keywordsArray.forEach(function (arrayVal) {
                                (army.keywords.includes(arrayVal) && addStratagem != false) ? keywordsOK = true : keywordsOK = false
                                console.log("Array value: " + arrayVal)
                                console.log("keywordsOK: " + keywordsOK)
                            })
                        }
                        else {
                            console.log("all is false")
                            keywordsArray.forEach(function (arrayVal) {
                                (army.keywords.includes(arrayVal)) ? keywordsOK = true : keywordsOK = false
                                console.log("Array value: " + arrayVal)
                                console.log("keywordsOK: " + keywordsOK)
                            })
                        }
                        addStratagem = keywordsOK && factionkeywordsOK && abilitiesOK && wargearOK
                        console.log("Case finished - addStratagem: " + addStratagem)
                        break
                    case "abilities":
                        console.log("abilities case")
                        //abilitiesArray = stratagem[switchValue]
                        //abilitiesArray.forEach(function (arrayVal) {
                        //    (army.abilities.includes(arrayVal)) ? abilitiesOK = true : abilitiesOK = false
                        //    console.log("Array value: " + arrayVal)
                        //    console.log("abilitiesOK: " + abilitiesOK)
                        //})
                        //addStratagem = keywordsOK && factionkeywordsOK && abilitiesOK && wargearOK
                        //console.log("Case finished - addStratagem: " + addStratagem)
                        break
                    case "factionkeywords":
                        console.log("factionkeywords Case")
                        factionkeywordsArray = stratagem[switchValue]
                        factionkeywordsArray.forEach(function (arrayVal) {
                            (army.factionkeywords.includes(arrayVal)) ? factionkeywordsOK = true : factionkeywordsOK = false
                            console.log("Array value: " + arrayVal)
                            console.log("factionkeywordsOK: " + factionkeywordsOK)
                        })
                        addStratagem = keywordsOK && factionkeywordsOK && abilitiesOK && wargearOK
                        console.log("Case finished - addStratagem: " + addStratagem)

                        break
                    case "wargear":
                        console.log("wargear Case")
                        break
                    default:
                        console.log("Default Case")
                }
            }
        })

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

unit1.addModel(models.getModel("immortal"))
unit1.addModel(models.getModel("immortal"))
unit1.addModel(models.getModel("immortal"))
unit1.setFaction("Mephrit")
unit1.addModel(models.getModel("immortal"))
unit1.addModel(models.getModel("immortal"))
unit1.addModel(models.getModel("immortal"))
unit1.removeModel(2)

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