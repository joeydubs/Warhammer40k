const Model = require('./model')

class Unit {
    constructor() {
        this.models = []
    }

    setFaction(faction) {
        this.faction = faction
        if (this.models.length > 0) {
            this.models.forEach(this.setModelFaction)
        }
    }

    getRole() {
        return this.role
    }

    addModel(model) {
        if (this.faction) {
            console.log("Setting model faction")
            this.setModelFaction(model)
        }
        this.models.push(model)
        if (!this.role) {
            console.log("Setting Unit role")
            this.role = model.role
            console.log(this.role)
        }
    }

    removeModel(index) {
        this.models.splice(index, 1)
    }

    getSize() {
        return this.models.length
    }

    setModelFaction(model) {
        var index = model.factionkeywords.indexOf("<Dynasty>")
        if (index !== -1) {
            model.factionkeywords[index] = this.faction
            //this.model.applyFactionTraits()
        }
    }
}

module.exports = Unit