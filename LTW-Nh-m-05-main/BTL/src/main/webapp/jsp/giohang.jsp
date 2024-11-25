<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Giỏ Hàng</title>

  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }
    header {
      background-color: #333;
      color: #fff;
      padding: 20px;
      text-align: center;
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
    section {
      padding: 20px;
      text-align: center;
    }
    h1 {
      font-size: 36px;
      color: #333;
    }
    p {
      font-size: 18px;
      line-height: 1.6;
      color: #555;
    }
    .about-section {
      background-color: #fff;
      padding: 40px 20px;
      margin: 20px auto;
      width: 80%;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
    }
    .about-section img {
      max-width: 100%;
      border-radius: 8px;
    }
    footer {
      background-color: #333;
      color: #fff;
      text-align: center;
      padding: 10px 0;
      position: relative;
      bottom: 0;
      width: 100%;
    }
  </style>
</head>
<body>
<header>
  <div class="top-bar">
    <div class="contact-info">
      <span class="language">Tên Web</span>

    </div>
    <nav class="top-nav">
      <ul>
        <li><a href="${pageContext.request.contextPath}/jsp/index.jsp">Trang Chủ</a></li>
        <li><a href="${pageContext.request.contextPath}/products?category=0">Sản Phẩm</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/gioithieu.jsp">Giới Thiệu</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/lienhe.jsp">Liên Hệ</a></li>
        <li><a href="${pageContext.request.contextPath}/login" class="login-button">Đăng nhập</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/toi.jsp">Tôi</a></li>
      </ul>
    </nav>
  </div>
</header>

<section class="about-section">
  <h2>Đã có gì đâu</h2>

</section>


</body>
</html>