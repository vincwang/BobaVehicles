var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  var userLoggedIn = false;
	userLoggedIn = (req.cookies.userid != null);
  res.render('myaccount',
  	{
      loggedin: userLoggedIn
  	});
});


router.post('/logout', function(req, res) {
	var userid = req.cookies.userid;
	console.log(req.cookies);
  res.clearCookie('userid');
  console.log(res.cookies);
  res.send('succuss');
});

module.exports = router;
