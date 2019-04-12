class Model {
    constructor(attributes) {
        //['console.log(attributes)
        this.name = attributes.name
        this.wargear = attributes.wargear
        this.factionkeywords = attributes.factionkeywords
        this.keywords = attributes.keywords
        this.role = attributes.role
        if (attributes.tiers) {
            console.log("Attributes has tiers key")
            this.tiers = attributes.tiers
            this.tier = this.tiers.tier1
            this.w = this.tier.w

            this.updateAttributes()
        }
        else {
            this.m = attributes.m
            this.ws = attributes.ws
            this.bs = attributes.bs
            this.s = attributes.s
            this.t = attributes.t
            this.w = attributes.w
            this.a = attributes.a
            this.ld = attributes.ld
            this.sv = attributes.sv
        }
    }

    updateAttributes() {
        this.m = this.tier.m
        this.ws = this.tier.ws
        this.bs = this.tier.bs
        this.s = this.tier.s
        this.t = this.tier.t
        //this.w = this.tier.w
        this.a = this.tier.a
        this.ld = this.tier.ld
        this.sv = this.tier.sv

    }

    getTier() {
        if (this.w > this.tiers.tier2.w) {
            console.log("Setting as tier 1")
            this.tier = this.tiers.tier1
            this.updateAttributes()
        }
        else if (this.w > this.tiers.tier3.w) {
            console.log("Setting as tier 2")
            this.tier = this.tiers.tier2
            this.updateAttributes()
        }
        else {
            console.log("Setting as tier 3")
            this.tier = this.tiers.tier3
            this.updateAttributes()
        }
    }

    takeDamage(damage) {
        this.w -= damage
        console.log("Wounds left: " + this.w)
        if (this.tier) {
            this.getTier()
        }
    }
}

module.exports = Model