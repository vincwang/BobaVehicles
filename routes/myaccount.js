var express = require('express');
var router = express.Router();

var mysql = require('../jsHelper/mysql.js');
var connect = mysql.connect;

router.get('/', function(req, res, next) {
  var userLoggedIn = false;
	userLoggedIn = (req.cookies.userid != null);

  connect.query('SELECT * FROM users WHERE userid = ' + req.cookies.userid + ' limit 1', function(err, rows, fields) {
    var user = rows[0];
    res.render('myaccount',
      {
        user: user,
        loggedin: userLoggedIn
      });
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

function getSoldItems(supplier) {
  connect.query('SELECT * FROM users WHERE userid', function(err, rows, fields) {

  })
}



module.exports = router;
