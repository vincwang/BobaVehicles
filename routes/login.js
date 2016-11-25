var express = require('express');
var router = express.Router();

var mysql = require('../jsHelper/mysql.js');
var connect = mysql.connect;

/* GET home page. */
router.get('/', function(req, res, next) {
  var userLoggedIn = false;
	userLoggedIn = (req.cookies.userid != null);
  res.render('login',
  	{
      loggedin: userLoggedIn
  	});
});

router.post('/process', function(req,res){
  console.log("post from log in");
  var userEmail = req.body.userEmail;
  var pass = req.body.userPassword;

  connect.query('SELECT userid, password FROM users WHERE email = ? limit 1', userEmail, function(err, rows, fields) {
    if (err) throw err;
    if (pass === rows[0].password) {
      console.log("good!");
      res.cookie('userid', rows[0].userid, {expire: new Date() + 9999});
      connect.query('SELECT EXISTS(SELECT * FROM Suppliers WHERE supplierid = '+ rows[0].userid + ') as isSupplier', function(err, rows, fields) {
				var isSupplier = rows[0].isSupplier;
        res.cookie('isSupplier', isSupplier, {expire: new Date() + 9999});
        res.redirect('/?user=' + rows[0].userid);
      })
    } else {
      console.log("bad password!");
      res.send("bad password!");
    }
  });
})

module.exports = router;
