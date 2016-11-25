var express = require('express');
var router = express.Router();

var mysql = require('../jsHelper/mysql.js');
var connect = mysql.connect;


/* GET home page. */
router.get('/', function(req, res, next) {
  var userLoggedIn = false;
	userLoggedIn = (req.cookies.userid != null);
  res.render('signup',
  	{
      loggedin: userLoggedIn
  	});
});


router.post('/register', function(req,res){
  var user = {
    userName: req.body.username,
    password: req.body.password,
    address: req.body.address,
    bankacct: req.body.bank
  }

  var userType = req.body.type;
  register(user, userType, req, res);

})

function register(user, userType, req, res) {
  var query = connect.query('INSERT INTO USERS SET ?', user, function(err, result) {
    if (err) throw err;
    var userid = result.insertId;

    if (userType == "buyer") {
      var buyer = {
        buyerid: userid
      }
      query = connect.query('INSERT INTO Buyers SET ?', buyer, function(err, result) {
        if (err) throw err;
        console.log(query);
        res.redirect('../login');
      });
    } else {
      var supplier = {
        supplierid: userid
      }
      query = connect.query('INSERT INTO Suppliers SET ?', supplier, function(err, result) {
        if (err) throw err;
        console.log(query);
        res.redirect('../login');
      });
    }
  });
}


module.exports = router;
