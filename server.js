const http = require('http')
const url = require('url')
const express = require('express')
const pug = require('pug')

const app = express()
const path = require('path')
const port = 5300

const fs = require('fs')

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

app.post('/addmodel', function (req, res) {
	var model = req.body.model
	console.log(model)
})

app.listen(port, function () {
	console.log("Warhammer server is listening on port " + port + "!")
})
