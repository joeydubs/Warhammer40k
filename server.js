const http = require('http')
const express = require('express')

const app = express()
const path = require('path')
const port = 5300

app.get('/', function (req, res) {
	res.sendFile(path.join(__dirname + '/pages/home.html'))
})

app.listen(port, function () {
	console.log("Warhammer server is listening on port " + port + "!")
})
