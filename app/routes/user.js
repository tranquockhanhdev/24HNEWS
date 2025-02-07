var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var path = require('path');
var session = require('express-session');
var con = require('../config/connectdb.js');
router.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
}));
router.use(express.json());
router.use(express.urlencoded({ extended: true }));

/* GET home page. */
router.get('/', function (req, res, next) {
    if (req.session.loggedin) {
        res.render('layout', { content: 'navbaruser.ejs' });
    } else {
        res.redirect('/login');
    }
});

router.get('/contract', function (req, res, next) {
    res.render('contract', { content: 'navbaruser.ejs' })
})
router.get('/404', function (req, res, next) {
    res.render('error', { content: 'navbaruser.ejs' })
})
router.get('/dashboard', function (req, res, next) {
    if (req.session.loggedin) {
        res.redirect('/admin');
    } else {
        // Nếu chưa đăng nhập, chuyển hướng người dùng đến trang đăng nhập
        res.redirect('/login');
    }
});
router.get('/logout', function (req, res, next) {
    if (req.session.loggedin = true) {
        req.session.loggedin = false;
        res.redirect('/');
    }
})
module.exports = router;
