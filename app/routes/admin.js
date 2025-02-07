var express = require('express');
const multer = require('multer');
var path = require('path');
var session = require('express-session');
var router = express.Router();
var con = require('../config/connectdb.js')
router.use(session({
  secret: 'secret',
  resave: true,
  saveUninitialized: true
}));
router.use(express.json());
router.use(express.urlencoded({
  extended: true
}));

router.use(express.static(path.join(__dirname, '../public/images')));
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, path.join(__dirname, '../public/images'));
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + '-' + file.originalname);
  }
});
const upload = multer({ storage: storage });
router.get('/', function (req, res, next) {
  if (req.session.loggedin) {
  } else {
    // Nếu chưa đăng nhập, chuyển hướng người dùng đến trang đăng nhập
    res.redirect('/login');
  }
  var countuser = "SELECT COUNT(*) as totaluser FROM user";
  var countdanhmuc = "SELECT COUNT(*) AS totaldanhmuc FROM danhmuc";
  var countbaiviet = "SELECT COUNT(*) AS totalbaiviet FROM baiviet";

  con.query(countuser, function (err, results) {
    if (err) throw err;
    con.query(countdanhmuc, function (err, resultsDanhmuc) {
      if (err) throw err;
      con.query(countbaiviet, function (err, resultsbaiviet) {
        if (err) throw err;
        res.render('admin/dashboard.ejs', {
          totaluser: results[0].totaluser,
          totaldanhmuc: resultsDanhmuc[0].totaldanhmuc,
          totalbaiviet: resultsbaiviet[0].totalbaiviet
        });
      });
    });
  });
});
router.get('/logout', function (req, res, next) {
  if (req.session.loggedin = true) {
    req.session.loggedin = false;
  }
});

router.get('/khachhang', function (req, res, next) {
  var sluser = "select * from user";
  con.query(sluser, function (err, results, fields) {
    if (err) throw err;
    res.render('admin/layoutadmin.ejs', { content: 'viewCustomers.ejs', data: { fields: JSON.parse(JSON.stringify(fields)), list: JSON.parse(JSON.stringify(results)) } })
  });
});

router.get('/danhmuc', function (req, res, next) {
  var sldanhmuc = "select * from danhmuc"
  con.query(sldanhmuc, function (err, results, fields) {
    if (err) throw err;
    res.render('admin/layoutadmin.ejs', { content: 'viewCategories.ejs', data: { list: JSON.parse(JSON.stringify(results)) } })
  });
});
router.post('/upload_danhmuc', function (req, res, next) {
  const tenDanhMuc = req.body.danhmucname;
  const sql = "insert into danhmuc(tendanhmuc) values (?)";
  con.query(sql, [tenDanhMuc], function (err, result) {
    if (err) {
      console.error("Lỗi khi thêm danh mục mới:", err);
      alert("Có lỗi xảy ra")
      return res.status(500).json({ error: 'Có lỗi xảy ra khi thêm danh mục mới' });
    }
    console.log("Đã thêm danh mục mới thành công!");
    res.redirect('/admin/danhmuc');
  });
});
router.delete('/delete_danhmuc/:dmid', function (req, res, next) {
  const idDanhmuc = req.params.dmid;
  const sql = "delete from danhmuc where id = ?";
  con.query(sql, [idDanhmuc], function (err, result) {
    if (err) {
      console.error("Lỗi khi thêm danh mục mới:", err);
      alert("Có lỗi xảy ra")
      return res.status(500).json({ error: 'Có lỗi xảy ra khi thêm danh mục mới' });
    }
    console.log("Đã xoá danh mục mới thành công!");
    res.redirect('/admin/danhmuc');
  });
});
router.post('/edit_danhmuc/:dmid', function (req, res, next) {
  const id = req.params.dmid;
  const tenDanhMuc = req.body.edit_name;

  const sql = "update danhmuc set tendanhmuc = ? WHERE id = ?";
  con.query(sql, [tenDanhMuc, id], function (err, result) {
    if (err) {
      console.error("Lỗi khi cập nhật danh mục:", err);
      return res.status(500).json({ error: 'Có lỗi xảy ra khi cập nhật danh mục' });
    }
    console.log("Đã cập nhật danh mục thành công!");
    res.redirect('/admin/danhmuc');
  });
});

router.get('/baiviet', function (req, res, next) {
  var slbaiviet = "select * from baiviet"
  var sldanhmuc = "select * from danhmuc"
  con.query(slbaiviet, function (err, results, fields) {
    if (err) throw err;
    con.query(sldanhmuc, function (err, resultDanhmuc, fields) {
      if (err) throw err;
      res.render('admin/layoutadmin.ejs', { content: 'viewAllNews.ejs', data: { list: JSON.parse(JSON.stringify(results)), danhmuc: JSON.parse(JSON.stringify(resultDanhmuc)) } })
    });
  });
});
router.post('/upload_baiviet', upload.single('file'), function (req, res, next) {
  const { n_name, n_noidung, n_ngay, category } = req.body;
  const image = req.file.filename;
  const sql = "INSERT INTO baiviet (tieude, noidung, hinhanh, ngay, danhmuc) VALUES (?, ?, ?, ?, ?)";
  con.query(sql, [n_name, n_noidung, image, n_ngay, category], function (err, result) {
    console.log(result);
    if (err) {
      console.error("Lỗi khi thêm Bài viết mới:", err);
      return res.status(500).json({ error: 'Có lỗi xảy ra khi thêm Bài viết mới' });
    }
    console.log("Đã thêm Bài viết mới thành công!");
    res.redirect('/admin/baiviet');
  });
});
router.delete('/delete_baiviet/:bvid', function (req, res, next) {
  const idbaiviet = req.params.bvid;
  const sql = "delete from baiviet where id = ?";
  con.query(sql, [idbaiviet], function (err, result) {
    if (err) {
      console.error("Lỗi khi xoá bài viết:", err);
      alert("Có lỗi xảy ra")
      return res.status(500).json({ error: 'Có lỗi xảy ra khi xoá bài viết' });
    }
    console.log("Đã xoá bài viết thành công!");
    res.redirect('/admin/baiviet');
  });
});
router.post('/edit_baiviet/:bvid', upload.single('file'), function (req, res, next) {
  const idBaiviet = req.params.bvid;
  const { edit_baiviet, edit_noidung, edit_ngay, edit_category } = req.body;
  const image = req.file.filename;

  const sql = "UPDATE baiviet SET tieude = ?, noidung = ?, hinhanh = ?, ngay = ?, danhmuc = ? WHERE id = ?";
  con.query(sql, [edit_baiviet, edit_noidung, image, edit_ngay, edit_category, idBaiviet], function (err, result) {
    if (err) {
      console.error("Lỗi khi cập nhật bài viết:", err);
      return res.status(500).json({ error: 'Có lỗi xảy ra khi cập nhật bài viết' });
    }
    console.log("Đã cập nhật bài viết thành công!");
    res.redirect('/admin/baiviet');
  });
});

router.get('/contact', function (req, res, next) {
  var slcontact = "select * from contact";
  con.query(slcontact, function (err, results, fields) {
    if (err) throw err;
    res.render('admin/layoutadmin.ejs', { content: 'viewContact.ejs', data: { fields: JSON.parse(JSON.stringify(fields)), list: JSON.parse(JSON.stringify(results)) } })
  });
});
router.post('/edit_contact/:bvid', function (req, res, next) {
  const idContact = req.params.bvid;
  const { edit_ct_web, edit_ct_diachi, edit_ct_sdt, edit_ct_email, edit_ct_facebook, edit_ct_youtube, } = req.body;
  const sql = "UPDATE contact SET ten = ?, diachi = ?, sodienthoai = ?, email = ?, facebook = ?,youtube = ? WHERE id = ?";
  con.query(sql, [edit_ct_web, edit_ct_diachi, edit_ct_sdt, edit_ct_email, edit_ct_facebook, edit_ct_youtube, idContact], function (err, result) {
    if (err) {
      console.error("Lỗi khi cập nhật Contact:", err);
      return res.status(500).json({ error: 'Có lỗi xảy ra khi cập nhật Contact' });
    }
    console.log("Đã cập nhật Contact Thành Công!");
    res.redirect('/admin/contact');
  });
});
router.get('/lienhe', function (req, res, next) {
  var sllienhe = "select * from lienhe"
  con.query(sllienhe, function (err, results, fields) {
    if (err) throw err;
    res.render('admin/layoutadmin.ejs', { content: 'viewlienhe.ejs', data: { list: JSON.parse(JSON.stringify(results)) } })
  });
});
router.delete('/delete_lienhe/:lhid', function (req, res, next) {
  const idlienhe = req.params.lhid;
  const sql = "delete from lienhe where id = ?";
  con.query(sql, [idlienhe], function (err, result) {
    if (err) {
      console.error("Lỗi khi xoá liên hệ:", err);
      return res.status(500).json({ error: 'Có lỗi xảy ra xoá liên hệ' });
    }
    console.log("Đã xoá liên hệ thành công!");
    res.redirect('/admin/lienhe');
  });
});
module.exports = router;