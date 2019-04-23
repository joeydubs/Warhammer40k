class Army {
    constructor() {
        this.units = []
        this.keywords = []
        this.factionkeywords = []
        this.wargear = {}
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
            if (!(element in this.wargear)) {
                this.wargear[element] = undefined
            }
        });
        //console.log(this.keywords)
        //console.log(this.factionkeywords)
        //console.log(this.wargear)
    }

    removeUnit(index) {
        this.units.splice(index, 1)

        this.updateKeywords()
    }

    updateKeywords() {
        this.keywords = []
        this.factionkeywords = []
        this.wargear = []
        
        this.units.forEach(unit => {
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
        })
    }
}

module.exports = Army