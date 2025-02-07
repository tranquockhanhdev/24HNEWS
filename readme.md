
# Ứng dụng Tin tức 24h - Trang tin tức hiện đại

## Giới thiệu
Ứng dụng **Tin tức 24h** là một nền tảng tin tức trực tuyến được xây dựng bằng **Node.js**, cung cấp trải nghiệm đọc tin tức mượt mà và khả năng quản lý nội dung hiệu quả. Hệ thống bao gồm giao diện người dùng thân thiện và hệ thống quản trị linh hoạt.

## Các điểm nổi bật
- 🌟 **Giao diện hiện đại**, dễ sử dụng  
- 📝 **Hệ thống quản trị mạnh mẽ** với CKEditor  
- 🔐 **Phân quyền người dùng chi tiết**  
- ⚡ **Tối ưu hiệu suất, tốc độ tải trang nhanh**  
- 📺 **Tích hợp đa phương tiện** (hình ảnh, video)  

---

## Tính năng chính

### 📖 Dành cho người đọc
- Đọc tin tức theo danh mục  
- Tìm kiếm bài viết  
- Chia sẻ bài viết lên mạng xã hội  
- Bình luận & tương tác  
- Theo dõi tin tức yêu thích  

### 🔑 Dành cho quản trị viên
- Quản lý bài viết (thêm, sửa, xóa)  
- Quản lý danh mục  
- Upload & quản lý hình ảnh  
- Thống kê truy cập  
- Quản lý người dùng & phân quyền  

---

## Yêu cầu hệ thống
- **Node.js** (v14+)  
- **MySQL** (v5.7+)  
- **npm** hoặc **yarn**  

---

## Hướng dẫn cài đặt

### 1️⃣ Clone dự án
git clone <repository-url>
cd doan-nodejs


### 2️⃣ Cài đặt dependencies
npm install


### 3️⃣ Cấu hình database
- Import file **newsfeednodejs.sql** vào MySQL  
- Cập nhật thông tin kết nối trong **app/config/connectdb.js**  

### 4️⃣ Khởi chạy ứng dụng
npm start


---

## Công nghệ sử dụng
- **Node.js** & **Express.js**  
- **MySQL Database**  
- **EJS Template Engine**  
- **CKEditor**  
- **Bootstrap**  

---

## Dependencies chính

{
  "cookie-parser": "~1.4.4",
  "debug": "~2.6.9",
  "ejs": "^3.1.10",
  "express": "^4.21.2",
  "express-session": "^1.18.0",
  "mysql": "^2.18.1"
}

---

## Cấu trúc thư mục
```
app/
├── config/         # Cấu hình database
├── public/         # Tài nguyên tĩnh
├── routes/         # Route controllers  
└── views/          # Template views
```

---

## Tác giả
- **TRẦN QUỐC KHÁNH**
- 📧 Email: khanhtran19.dev@gmail.com

---

## License
🚀 **MIT License**

---

## Liên hệ & Hỗ trợ
- 📧 Email: khanhtran19.dev@gmail.com 
