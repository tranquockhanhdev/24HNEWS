var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./app/routes/index');
var adminRouter = require('./app/routes/admin');
var userRouter = require('./app/routes/user');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, './app/views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, './app/public')));

app.use('/', indexRouter);
app.use('/admin', adminRouter);
app.use('/user', userRouter);

// error handler
app.use(function (err, req, res, next) {
  console.log(err)
  res.end('404 Not Found');
});

module.exports = app;
