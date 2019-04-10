'use strict'

const fs = require('fs')

class FileImport {
    constructor() {
        this.library = {}
    }

    importJson(filename, sync = false) {
        if (filename.slice(filename.length - 5) == ".json") {
            // Used if a file has to be loaded syncronously, such as the default json file
            if (sync) {
                var fileContents = fs.readFileSync(filename).toString();
                this.library = JSON.parse(fileContents);
                //library[newDictionary.dictionary_name] = newDictionary.entries;
                //imported.push(filename);
                //console.log(library);
            }
            else {
                fs.readFile(filename, function (err, data) {
                    if (err) {
                        //console.log(`There was an error reading file "${filename}"`);
                        //console.log(err);
                    }
                    else {
                        var fileContents = data.toString();
                        this.library = JSON.parse(fileContents);
                        //library[newDictionary.dictionary_name] = newDictionary.entries;
                        //imported.push(filename);
                        //console.log(library);
                    }
                })
            }
        }
        else {
            console.log(`Invalid filename "${filename}"`);
        }
    }
}

module.exports = FileImport