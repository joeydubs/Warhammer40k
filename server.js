const http = require('http')
const express = require('express')

const app = express()
const path = require('path')
const port = 5300

const fs = require('fs')

app.get('/', function (req, res) {
	res.sendFile(path.join(__dirname + '/pages/html/home.html'))
})

app.post('/resources/models.json', function (req, res) {
	var fileContents = fs.readFileSync("./resources/models.json").toString()
	var jsonDict = JSON.parse(fileContents)
	
	res.status(200)
	res.type('json')
	var payload = {
		status: 200,
		value: jsonDict
	}
	res.send(JSON.stringify(payload))
})

app.listen(port, function () {
	console.log("Warhammer server is listening on port " + port + "!")
})
