const model = require('./model')

class ModelLib {
    constructor(lib) {
        this.library = lib
    }

    getModel(key) {
        return new model(this.library[key])
    }
}

module.exports = ModelLib