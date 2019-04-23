class WargearLib {
    constructor(lib) {
        this.library = lib
    }

    getWargear(key) {
        if (this.library[key]) {
            var wargear = JSON.parse(JSON.stringify(this.library[key]))
            return wargear
        }
    }
}
module.exports = WargearLib