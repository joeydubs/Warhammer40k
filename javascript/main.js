const ArmyManager = require('./armymanager')

army = new ArmyManager()

modelArray = ["immortal", "immortal", "immortal", "immortal", "immortal"]
modelArray2 = ["overlord"]
modelArray3 = ["stalker"]

army.createUnit(modelArray)
army.createUnit(modelArray2)

console.log(army.getArmy())