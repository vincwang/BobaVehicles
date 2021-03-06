var express = require('express');
var router = express.Router();

var mysql = require('../jsHelper/mysql.js');
var connect = mysql.connect;

router.get('/', function(req, res, next) {
  var userLoggedIn = false;
	userLoggedIn = (req.cookies.userid != null);

  connect.query('SELECT * FROM users WHERE userid = ' + req.cookies.userid + ' limit 1', function(err, rows, fields) {
    var user = rows[0];
    var soldItems = null;
    var activeItems = null;
    if (req.cookies.isSupplier != null && req.cookies.isSupplier == 1) {
      getItems(req.cookies.userid, function(soldItems, activeItems){
        res.render('myaccount',
          {
            user: user,
            loggedin: userLoggedIn,
            soldItems: soldItems,
            activeItems: activeItems,
            isSupplier: req.cookies.isSupplier
          });
      });
    } else {
      var orderHisotry = null;
      getItemsForBuyers(req.cookies.userid, function(orderHisotry) {
        res.render('myaccount',
          {
            user: user,
            loggedin: userLoggedIn,
            orderHisotry: orderHisotry,
            isSupplier: req.cookies.isSupplier
          });
      })
    }
  })
});

router.post('/logout', function(req, res) {
	var userid = req.cookies.userid;
	console.log(req.cookies);
  res.clearCookie('userid');
  res.clearCookie('isSupplier');
  console.log(res.cookies);
  res.send('succuss');
});

function getItems(supplier, callback) {
  var selectSold  = "SELECT table1.*, table2.deliverytime FROM " +
                    "(SELECT t1.itemid, t1.brand, t1.model, t1.price, t2.price AS soldAt " +
                    "FROM Items AS t1 " +
                    "inner join VehicleTransaction AS t2 " +
                    "ON sold = 1 AND t1.itemid = t2.item AND t1.supplier = ?) AS table1 " +
                    "LEFT JOIN Deliveries AS table2 ON table1.itemid = table2.item";
  var selectActive =  "SELECT itemid, brand, model, price, biddable, minimumprice, currentbid, bidendtime " +
                      "FROM BobaVehicles.Items " +
                      "WHERE supplier = ? AND sold = 0";

  var query = connect.query(selectSold, [supplier], function(err, rows, fields) {
    if (err) throw err;
    var soldItems = rows;
    query = connect.query(selectActive, [supplier], function(err, rows, fields) {
      var activeItems = rows;
      callback(soldItems, activeItems);
    })

  })
}

function getItemsForBuyers(buyer, callback) {
  var orderHisotry =  "SELECT table1.*, table2.deliverytime FROM " +
                      "(SELECT T1.item, T1.buyer, T1.transtype, T1.transtime, T1.price, T2.brand, T2.model, T3.userName as seller " +
                      "FROM VehicleTransaction as T1, Items as T2, USERS as T3 " +
                      "WHERE buyer = ? AND T1.item = T2.itemid AND T2.supplier = T3.userid) AS table1 " +
                      "LEFT JOIN Deliveries AS table2 ON table1.item = table2.item";
  var query  = connect.query(orderHisotry, [buyer], function(err, rows, fields) {
    if (err) throw err;
    var orderHisotry = rows;
    callback(orderHisotry);
  });
}

router.post('/submitReview', function(req, res) {
	var buyer = req.cookies.userid;
	var comment = req.body.comment;
	var stars = req.body.stars;
  var item = req.body.item;

  var getSupllier = "SELECT supplier FROM Items where itemid = ? LIMIT 1";
  connect.query(getSupllier, item, function(err, rows, fields) {
    if (err) throw err;
    var supplier = rows[0].supplier;
    var review  = {supplier: supplier, ratedby: buyer, rating: stars, ratingtime: new Date(), comment: comment};
    console.log(review);
    var query = connect.query('INSERT INTO Ratings SET ?', review, function(err, result) {
  		if (err) throw err;
      res.send('succuss');
    });
  })
});

router.post('/setDiscount', function(req, res) {
	var discount = req.body.disc;
  var item = req.body.item;

  var saleOff = (100 - discount) / 100;

  var updatePrice = "UPDATE Items " +
                    "SET price = price * ? " +
                    "WHERE itemid = ?";

  var setIsOnSale = "UPDATE Items SET isonsale = 1 WHERE itemid = ?";
  var query = connect.query(updatePrice, [saleOff, item], function(err, rows, fields) {
    if (err) throw err;
    query = connect.query(setIsOnSale, [item], function(err, rows, fields) {
      if (err) throw err;
        res.send('succuss');
    });
  });
});




module.exports = router;
