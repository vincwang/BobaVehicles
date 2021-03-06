var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var mysql = require('./jsHelper/mysql.js');

var cron = require('cron');

var routes = require('./routes/index');
var login = require('./routes/login');
var checkout = require('./routes/checkout');
var myaccount = require('./routes/myaccount');
var sell = require('./routes/sell');
var signup = require('./routes/signup');

var bidding = require('./jsHelper/bidding.js');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', routes);
app.use('/login', login);
app.use('/checkout', checkout);
app.use('/myaccount', myaccount);
app.use('/sell', sell);
app.use('/signup', signup);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

var cronJob = cron.job("*/5 * * * * *", function(){
    var date = new Date();
    //var i = new Date(Date.UTC(date.getFullYear(), date.getMonth(), date.getDate(), date.getHours(), date.getMinutes(), date.getSeconds()));
    //var i = new Date(date.getUTCFullYear(), date.getUTCMonth(), date.getUTCDate(), date.getUTCHours(), date.getUTCMinutes(), date.getUTCSeconds());
    // var i = new Date().toISOString().slice(0, 19).replace('T', ' ');
    // console.log('cron job completed ' + i);

    bidding.bidToTrans(mysql.connect);
    bidding.expireBids(mysql.connect);

});
cronJob.start();



module.exports = app;
