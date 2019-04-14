const fs = require('fs')
const http = require('http')
const url = require('url')
const express = require('express')
const path = require('path')
const pug = require('pug')

const port = 5300
const app = express()

const ArmyManager = require('./javascript/armymanager')
army = new ArmyManager()

app.use(express.json())

app.get('/', function (req, res) {
	res.sendFile(path.join(__dirname + '/pages/html/home.html'))
})

app.post('/resources/models.json', function (req, res) {
	var fileContents = fs.readFileSync("./resources/models.json").toString()
	var jsonDict = JSON.parse(fileContents)
	//console.log(jsonDict)
	const compiledPug = pug.compileFile("./pages/pug/tableGenerator.pug")
	//console.log(compiledPug({models: jsonDict}))
	
	res.status(200)
	res.type('json')
	var payload = {
		status: 200,
		value: compiledPug({models: jsonDict})
	}
	res.send(JSON.stringify(payload))
})

app.post('/fetchModelList', function (req, res) {
	var modelList = army.getModelList();

	res.status(200)
	res.type('json')
	res.send(JSON.stringify(modelList))
})

app.post('/fetchModelStats', function (req, res) {
	var model = req.body.model
	//console.log(model)
	var modelStats = army.getModelStats(model);

	res.status(200)
	res.type('json')
	res.send(JSON.stringify(modelStats))
})

app.post("/fetchArmy", function(req, res) {
	var myArmy = army.getArmy()

	res.status(200)
	res.type("json")
	res.send(JSON.stringify(myArmy))
})

app.post('/createUnit', function(req, res) {
	var modelList = req.body
	console.log(modelList)
	army.createUnit(modelList)
	res.status(200)
	res.send()
})

app.listen(port, function () {
	console.log("Warhammer server is listening on port " + port + "!")
})
