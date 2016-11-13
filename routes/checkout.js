var express = require('express');
var router = express.Router();
var mysql = require('./index');

var mysql = require('../jsHelper/mysql.js');
var connect = mysql.connect;


var vehicleInfo;
var supplier;

/* GET home page. */
router.get('/', function(req, res, next) {
	var itemid = req.query.itemid;
	var userLoggedIn = false;
	userLoggedIn = (req.cookies.userid !== null);
	connect.query('SELECT * FROM items WHERE itemid = ' + itemid + ' limit 1', function(err, rows, fields) {
  	if (err) throw err;
		vehicleInfo = rows[0];
		connect.query('SELECT * FROM users WHERE userid = ' + vehicleInfo.supplier + ' limit 1', function(err, rows, fields) {
			if (err) throw err;
			supplier = rows[0];
			res.render('checkout',
			{
				vehicle: vehicleInfo,
				sup: supplier,
				loggedin: userLoggedIn
			});
		});
	});
});

router.post('/buyout', function(req, res) {
	console.log(req.cookies);
	var userid = req.cookies.userid;
	var price = req.body.price.substring(1);
	var itemid = req.body.itemid;
	var VehicleTransaction  = {item: itemid, buyer: userid, transtype: 1, price: price, transtime: new Date()};
	var query = connect.query('INSERT INTO VehicleTransaction SET ?', VehicleTransaction, function(err, result) {
		console.log(query.sql);
		if (err) throw err;
		var updateQuery = connect.query('UPDATE items SET SOLD = 1 WHERE itemid = ' + itemid, function(err, result) {
			if (err) throw err;
			console.log(updateQuery.sql);
			res.send('succuss');
		});
	});
});

router.post('/bid', function(req, res) {
	var userid = req.cookies.userid;
	var bidprice = req.body.bidprice;
	var itemid = req.body.itemid;
	var newbid  = {buyer: userid, item:itemid,  bidprice: bidprice, bidtime: new Date()};
	var query = connect.query('INSERT INTO Bid SET ?', newbid, function(err, result) {
		console.log(query.sql);
		if (err) throw err;
		var updateBid = connect.query('UPDATE items SET currentbid = ? WHERE itemid = ?', [bidprice, itemid], function(err, result) {
			console.log(updateBid.sql);
			if (err) throw err;
			res.send('succuss');
		});
	});
});



module.exports = router;
