const model = require('./model')

class ModelLib {
    constructor(lib) {
        this.library = lib
    }

    getModel(key) {
        var attributes = JSON.parse(JSON.stringify(this.library[key]))
        return new model(attributes)
    }
}

module.exports = ModelLib