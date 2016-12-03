var express = require('express');
var router = express.Router();

var mysql = require('../jsHelper/mysql.js');
var connect = mysql.connect;
connect.connect();

/* GET home page. */
router.get('/', function(req, res) {
	var userLoggedIn = false;
	userLoggedIn = (req.cookies.userid != null);
	var currentPage = req.query.page;
	if (currentPage == null) {
		currentPage = 0;
	}
	connect.query('SELECT * FROM BobaVehicles.Items WHERE sold = 0 ORDER BY listedtime DESC', function(err, rows, fields) {
		var totalPages = Math.ceil(rows.length / 18);
		res.render('index', {
  			items: rows.slice(currentPage * 18, currentPage * 18 + 18),
				loggedin: userLoggedIn,
				isSupplier: req.cookies.isSupplier,
				totalPages: totalPages,
				currentPage: currentPage
  		});
	});
});

router.post('/search', function(req,res){
	var userLoggedIn = false;
	userLoggedIn = (req.cookies.userid != null);

	var pattern = '%'+req.body.searchkey+'%';

	var searchQuery = 	"SELECT * FROM BobaVehicles.Items " +
											"WHERE sold = 0 AND (brand LIKE ? or model LIKE ?)" +
											"ORDER BY listedtime DESC";
	var query = connect.query(searchQuery, [pattern, pattern], function(err, rows, fields) {
			if (err) throw err;
			res.render('index', {
	  			items: rows,
					loggedin: userLoggedIn,
					isSupplier: req.cookies.isSupplier,
					totalPages: 0
	  	});
	});
});

router.get('/getCategory', function(req, res) {
	var userLoggedIn = false;
	userLoggedIn = (req.cookies.userid != null);
	var currentPage = req.query.page;
	if (currentPage == null) {
		currentPage = 0;
	}
	var type = req.query.type;
	connect.query('SELECT * FROM BobaVehicles.Items WHERE sold = 0 AND vehicletype = ? ORDER BY listedtime DESC', type,function(err, rows, fields) {
		var totalPages = Math.ceil(rows.length / 18);
		res.render('index', {
  			items: rows.slice(currentPage * 18, currentPage * 18 + 18),
				loggedin: userLoggedIn,
				isSupplier: req.cookies.isSupplier,
				totalPages: totalPages,
				currentPage: currentPage
  		});
	});
});




module.exports = router;
module.exports.connect = connect;
