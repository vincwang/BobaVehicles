var mysql = require('mysql');

var connect = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: 'olivia',
	database: 'BobaVehicles',
	port: 3306
});


module.exports.connect = connect;
