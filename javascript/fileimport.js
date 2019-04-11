'use strict'

const fs = require('fs')

class FileImport {
    constructor() {
    }

    importJson(filename, sync = false, pathToFile) {
        var path
        if (pathToFile) {
            path = __dirname + pathToFile + filename
            console.log(path)
        }
        else {
            path = __dirname + filename
            console.log(path)
        }
        //console.log("Running file import");
        //console.log(__dirname + pathToFile + filename)
        if (filename.slice(filename.length - 5) == ".json") {
            //console.log("Valid file");
            // Used if a file has to be loaded syncronously, such as the default json file
            if (sync) {
                //console.log("Running sync file import");
                if (!fs.existsSync(path)) {
                    console.log(`There was an error reading file "${filename}"`);
                    console.log(err);
                }
                else {
                    var fileContents = fs.readFileSync(path, "utf8").toString();
                    this.library = JSON.parse(fileContents);
                    //library[newDictionary.dictionary_name] = newDictionary.entries;
                    //imported.push(filename);
                    //console.log(this.library);
                }
            }
            else {
                //console.log("Running async file import");
                fs.readFile(path, function (err, data) {
                    if (err) {
                        console.log(`There was an error reading file "${filename}"`);
                        console.log(err);
                    }
                    else {
                        var fileContents = data.toString();
                        this.library = JSON.parse(fileContents);
                        //library[newDictionary.dictionary_name] = newDictionary.entries;
                        //imported.push(filename);
                        //console.log(this.library);
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