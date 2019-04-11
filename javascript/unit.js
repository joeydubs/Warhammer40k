const Model = require('./model')

class Unit {
    constructor() {
        this.models = [];
        this.keywords = [];
        this.factionkeywords = [];
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
        this.models.push(model)
        if (this.faction) {
            console.log("Setting model faction")
            this.setModelFaction(model)
        }
        if (!this.role) {
            console.log("Setting Unit role")
            this.role = model.role
            console.log(this.role)
        }

        for (var i = 0; i < model.factionkeywords.length; i++) {
            if (!this.factionkeywords.includes(model.factionkeywords[i])) {
                this.factionkeywords.push(model.factionkeywords[i])
            }
        }

        for (var i = 0; i < model.keywords.length; i++) {
            if (!this.keywords.includes(model.keywords[i])) {
                this.keywords.push(model.keywords[i])
            }
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
        }
    }
}

module.exports = Unit