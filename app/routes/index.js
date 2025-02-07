var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var session = require('express-session');
var con = require('../config/connectdb.js')
router.use(session({
  secret: 'secret',
  resave: true,
  saveUninitialized: true
}));
router.use(express.json());
router.use(express.urlencoded({ extended: true }));

router.use(function (req, res, next) {
  var slfooter = "SELECT * FROM contact";
  var sltieudehinhanh = "SELECT * FROM baiviet";
  var sldanhmuc = "select * from danhmuc";
  var countbaiviet = "select count(*) from baiviet";
  con.query(slfooter, function (err, resultfooter) {
    con.query(sltieudehinhanh, function (err, resultstieudehinhanh) {
      con.query(sldanhmuc, function (err, resultstdanhmuc) {
        con.query(countbaiviet, function (err, resultscountbaiviet) {
          if (err) return next(err);
          resultstieudehinhanh.sort(() => Math.random() - 0.5);
          res.locals.slfooter = resultfooter;
          res.locals.tieudehinhanh = resultstieudehinhanh;
          res.locals.sldanhmuc = resultstdanhmuc;
          res.locals.countbaiviet = resultscountbaiviet;
          next();
        });
      });
    });
  });
});
router.get('/', function (req, res, next) {
  if (req.session.loggedin) {
    res.redirect('/user');
  } else {
    res.render('layout', { content: 'navbarIndex.ejs' });
  }
});
// router.get('/contract', function (req, res, next) {
//   res.render('contract', { content: 'navbarIndex.ejs' })
// })
router.get('/404', function (req, res, next) {
  res.render('error', { content: 'navbarIndex.ejs' })
})
router.get('/login', function (req, res, next) {
  res.render('login')
})
router.post('/login', (req, res) => {
  const { username, password } = req.body;
  if (username && password) {
    con.query('select * from user WHERE username = ? AND password = ?', [username, password], function (error, results, fields) {
      if (error) throw error;
      if (results.length > 0) {
        req.session.loggedin = true;
        req.session.username = username;
        res.redirect('/user');
      } else {
        res.send('Tên người dùng hoặc mật khẩu không đúng.');
      }
    })
  } else {
    res.send('nhap tai khoan va mat khau');
  }
});
router.get('/baiviet/:id', function (req, res, next) {
  const idBaiviet = req.params.id;
  var slbaiviet = "select * from baiviet where id=?";
  var slbinhluan = "select * from binhluan where idbaiviet=?";
  con.query(slbaiviet, [idBaiviet], function (err, results) {
    con.query(slbinhluan, [idBaiviet], function (err, resultsbinhluan) {
      if (err) throw err;
      res.render('baiviet', {
        content: 'navbarIndex.ejs',
        data: {
          list: JSON.parse(JSON.stringify(results)),
          listbinhluan: JSON.parse(JSON.stringify(resultsbinhluan))
        }
      });
    });
  });
});
router.post('/upload_lienhe', function (req, res, next) {
  const { name, email, phone, subject, message } = req.body;
  const sql = "INSERT INTO lienhe (ten, email, sodienthoai, tieude, noidung) VALUES (?, ?, ?, ?, ?)";
  con.query(sql, [name, email, phone, subject, message], function (err, result) {
    if (err) {
      console.error("Lỗi khi thêm liên hệ :", err);
      return res.status(500).json({ error: 'Có lỗi xảy ra khi thêm liên hệ' });
    }
    console.log("Đã thêm liên hệ mới thành công!");
    res.redirect('/');
  });
});
router.post('/upload_binhluan', function (req, res, next) {
  const { binhluan_email, binhluan_message, id } = req.body;
  const idbaiviet = req.body.id;
  const sql = "INSERT INTO binhluan (email, noidung,idbaiviet) VALUES (?, ?,?)";
  con.query(sql, [binhluan_email, binhluan_message, id], function (err, result) {
    if (err) {
      console.error("Lỗi khi thêm liên hệ :", err);
      return res.status(500).json({ error: 'Có lỗi xảy ra khi thêm liên hệ' });
    }
    console.log("Đã thêm bình luận mới thành công!");
    res.redirect(`/baiviet/${idbaiviet}`);
  });
});
module.exports = router;
