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
  var username = req.body.userName;
  var pass = req.body.userPassword;

  connect.query('SELECT password FROM users WHERE userid = ' + username + ' limit 1', function(err, rows, fields) {
    if (err) throw err;
    if (pass === rows[0].password) {
      console.log("good!");
      res.cookie('userid', username, {expire: new Date() + 9999});
      res.redirect('/?user=' + username);
    } else {
      console.log("bad password!");
      res.send("success");
    }
  });
})

module.exports = router;
