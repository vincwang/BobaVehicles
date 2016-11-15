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
    if (req.cookies.isSupplier != null && req.cookies.isSupplier == 1) {
      getSoldItems(req.cookies.userid, function(soldItems){
        res.render('myaccount',
          {
            user: user,
            loggedin: userLoggedIn,
            soldItems: soldItems,
            isSupplier: req.cookies.isSupplier
          });
      });
    } else {
      res.render('myaccount',
        {
          user: user,
          loggedin: userLoggedIn,
          isSupplier: req.cookies.isSupplier
        });
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

function getSoldItems(supplier, callback) {
  var selectQuery = "SELECT table1.*, table2.deliverytime FROM " +
                    "(SELECT t1.itemid, t1.brand, t1.model, t1.price, t2.price AS soldAt " +
                    "FROM Items AS t1 " +
                    "inner join VehicleTransaction AS t2 " +
                    "ON sold = 1 AND t1.itemid = t2.item AND t1.supplier = ?) AS table1 " +
                    "LEFT JOIN Deliveries AS table2 ON table1.itemid = table2.item";
  var query = connect.query(selectQuery, [supplier], function(err, rows, fields) {
    if (err) throw err;
    callback(rows);
  })
}



module.exports = router;
