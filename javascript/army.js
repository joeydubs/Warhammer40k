class Army {
    constructor() {
        this.units = []
        this.keywords = []
        this.factionkeywords = []
        this.wargear = []
    }

    addUnit(unit) {
        console.log("Adding unit")
        this.units.push(unit)
        unit.keywords.forEach(element => {
            if (!this.keywords.includes(element)) {
                this.keywords.push(element)
            }
        });
        unit.factionkeywords.forEach(element => {
            if (!this.factionkeywords.includes(element)) {
                this.factionkeywords.push(element)
            }
        });
        unit.wargear.forEach(element => {
            if (!this.wargear.includes(element)) {
                this.wargear.push(element)
            }
        });
        console.log(this.keywords)
        console.log(this.factionkeywords)
        console.log(this.wargear)
    }
}

module.exports = Army