const fileImport = require('./fileimport')
const modelsLib = require('./modellib')
const unit = require('./unit')
//const model = require('./model.js')

newImport = new fileImport()
newImport.importJson("models.json", true)
console.log(newImport.library)

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
unit1.models.forEach(function(item) {
    console.log(item.factionkeywords)
})
console.log(unit2.models)
console.log(unit2.getRole())