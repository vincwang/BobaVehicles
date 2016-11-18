var express = require('express');
var router = express.Router();

var mysql = require('../jsHelper/mysql.js');
var connect = mysql.connect;

router.get('/', function(req, res, next) {
  var userLoggedIn = false;
	userLoggedIn = (req.cookies.userid != null);
    res.render('sell', {
      loggedin: userLoggedIn
    });
});

router.post('/listvehicle', function(req,res){
  var item = {
    supplier: req.cookies.userid,
    brand: req.body.brand,
    model: req.body.model,
    vehicletype: req.body.type,
    vehiclecondition: req.body.condition,
    mileage: req.body.mileage,
    color: req.body.color,
    price: req.body.price,
    biddable: req.body.biddable,
    minimumprice: req.body.minimumprice,
    bidendtime: req.body.bidend
  }
  if (item.biddable == 1) {
    item.bidendtime += " 23:59:59";
  } else {
    item.minimumprice = null;
    item.bidendtime = null;
  }

  var query = connect.query('INSERT INTO Items SET ?', item, function(err, result) {
    console.log(query.sql);
    if (err) throw err;
  });

  console.log(item);
  res.redirect('../myaccount');
})

module.exports = router;
