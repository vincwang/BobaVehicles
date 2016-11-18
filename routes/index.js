var express = require('express');
var router = express.Router();

var mysql = require('../jsHelper/mysql.js');
var connect = mysql.connect;
connect.connect();

/* GET home page. */
router.get('/', function(req, res) {
	var userLoggedIn = false;
	userLoggedIn = (req.cookies.userid != null);
	connect.query('SELECT * FROM BobaVehicles.Items WHERE sold = 0 ORDER BY listedtime DESC', function(err, rows, fields) {
		res.render('index', {
  			items: rows,
				loggedin: userLoggedIn,
				isSupplier: req.cookies.isSupplier,
  		});
	});
});




module.exports = router;
module.exports.connect = connect;
