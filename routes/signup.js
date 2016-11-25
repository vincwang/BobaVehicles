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
    email: req.body.email,
    password: req.body.password,
    address: req.body.address,
    bankacct: req.body.bank
  }

  var userType = req.body.type;
  var email = req.body.email;
  //check if email exists already
  connect.query('SELECT * FROM USERS WHERE email = ?', email, function(err, rows, fields) {
    if (err) throw err;
    if (rows.length != 0) {
      res.send('Email ' + email +  ' is registered already');
    } else {
      register(user, userType, req, res);
    }
  });
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
        res.send('success');
      });
    } else {
      var supplier = {
        supplierid: userid
      }
      query = connect.query('INSERT INTO Suppliers SET ?', supplier, function(err, result) {
        if (err) throw err;
        console.log(query);
        res.send('success');
      });
    }
  });
}


module.exports = router;
