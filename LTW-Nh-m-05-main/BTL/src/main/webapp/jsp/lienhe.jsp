<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liên Hệ - Cửa Hàng Thời Trang StyleNest</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .top-bar {
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .contact-info, .top-nav {
            display: flex;
            gap: 15px;
        }

        .top-nav ul {
            display: flex;
            list-style: none;
            padding: 0;
        }

        .top-nav ul li {
            margin: 0 10px;
        }

        .top-nav ul li a {
            color: white;
            text-decoration: none;
        }
        .top-nav ul li a:hover {
            color: blue; /* Đổi màu chữ thành xanh dương khi hover */
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 40px;
        }

        .contact-info div {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 30%;
            text-align: center;
        }
        .contact-info div h3 {
            color: #333;
            margin-bottom: 10px;
        }
        .contact-info div p {
            color: #555;
        }
        .contact-form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .contact-form button {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .contact-form button:hover {
            background-color: #555;
        }
        .map {
            margin-top: 40px;
            text-align: center;
        }
        iframe {
            width: 100%;
            height: 400px;
            border: none;
        }
        /* Dropdown menu styles */
                          .dropdown {
                              position: relative;
                              display: inline-block;
                          }

                          .dropdown-content {
                              display: none;
                              position: absolute;
                              background-color: #222222;
                              box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
                              padding: 12px 16px;
                              z-index: 1;
                          }

                          .dropdown:hover .dropdown-content {
                              display: block;
                          }

                          .dropdown-content a {
                              display: block;
                              color: black;
                              text-decoration: none;
                              padding: 8px 0;
                          }

                          .dropdown-content a:hover {
                              background-color: #ddd;
                          }
    </style>
</head>
<body>
<!-- Header -->
<header>
    <div class="top-bar">
       <div class="landing-page">
              <a href= "${pageContext.request.contextPath}/jsp/index.jsp">
              <img src="${pageContext.request.contextPath}/images/logo.png" alt="Logo" width = 250px height = 75px>
          </a>
       </div>

        <nav class="top-nav">
            <ul>
                <li></li>
                <!-- Dropdown menu for products -->
                <li class="dropdown">
                    <a href="${pageContext.request.contextPath}/products?category=0">Sản Phẩm</a>
                    <div class="dropdown-content">
                        <a href="${pageContext.request.contextPath}/products?category=1">Áo Nam</a>
                        <a href="${pageContext.request.contextPath}/products?category=2">Quần Nam</a>
                        <a href="${pageContext.request.contextPath}/products?category=3">Giày Nam</a>
                        <a href="${pageContext.request.contextPath}/products?category=4">Áo Nữ</a>
                        <a href="${pageContext.request.contextPath}/products?category=5">Quần Nữ</a>
                        <a href="${pageContext.request.contextPath}/products?category=6">Giày Nữ</a>
                        <a href="${pageContext.request.contextPath}/products?category=7">Váy Nữ</a>
                        <a href="${pageContext.request.contextPath}/products?category=8">Phụ Kiện</a>
                    </div>
                </li>
                <li><a href="${pageContext.request.contextPath}/jsp/gioithieu.jsp">Giới Thiệu</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/lienhe.jsp">Liên Hệ</a></li>
                <li><a href="${pageContext.request.contextPath}/login" class="login-button">Đăng nhập</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/toi.jsp">Tôi</a></li>
            </ul>
        </nav>
    </div>
</header>


<div class="container">
    <h1>Liên Hệ Với StyleNest</h1>

    <div class="contact-info">
        <div>
            <h3>Địa chỉ</h3>
            <p>123 Phố Thời Trang, Quận 1, TP. Hồ Chí Minh</p>
        </div>
        <div>
            <h3>Email</h3>
            <p>contact@stylenest.com</p>
        </div>
        <div>
            <h3>Điện thoại</h3>
            <p>(+84) 123 456 789</p>
        </div>
    </div>

    <div class="contact-form">
        <h2>Gửi phản hồi cho chúng tôi</h2>
        <form action="#" method="post">
            <label for="name">Tên của bạn</label>
            <input type="text" id="name" name="name" placeholder="Nhập tên của bạn" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Nhập email của bạn" required>

            <label for="message">Tin nhắn</label>
            <textarea id="message" name="message" rows="5" placeholder="Nhập tin nhắn của bạn" required></textarea>

            <button type="submit">Gửi</button>
        </form>
    </div>
