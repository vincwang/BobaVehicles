var express = require ('express');
var mysql = require ('mysql');
var app = express();



var connect = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: 'password',
	database: 'BobaVehicles'
})

connect.connect(function() {
	if (!!error) {
		console.log('Error');
	} else {
		console.log('Connected');
	}
})

app.listen(3000);