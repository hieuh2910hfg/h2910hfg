<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StyleNest - Fashion Store</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <style>

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
                <li><a href="${pageContext.request.contextPath}/jsp/customer.jsp">CST</a></li>
            </ul>
        </nav>
    </div>
</header>



<!-- Banner Section -->
<section class="banner" id="home">
    <h2>Tên web</h2>
    <p>Giải đáp cho mọi vấn đề thời trang của bạn.</p>

    <button><a href= "${pageContext.request.contextPath}/products?category=0">Shop Now</a></button>
</section>

<!-- Categories Section -->
<section id="collections">
    <div class="category-grid">
        <div class="category-item">
            <a href="${pageContext.request.contextPath}/products?category=1">
                <img src="${pageContext.request.contextPath}/images/Men's%20Clothing.png" width="300" height="300" alt="Áo Nam">
                <h3>Áo Nam</h3>
            </a>
        </div>
        <div class="category-item">
            <a href="${pageContext.request.contextPath}/products?category=2">
                <img src="${pageContext.request.contextPath}/images/quannam.png" width="300" height="300" alt="Quần Nam">
                <h3>Quần Nam</h3>
            </a>
        </div>
        <div class="category-item">
            <a href="${pageContext.request.contextPath}/products?category=3">
                <img src="${pageContext.request.contextPath}/images/giaynam.png" width="300" height="300" alt="Giày Nam">
                <h3>Giày Nam</h3>
            </a>
        </div>
        <div class="category-item">
            <a href="${pageContext.request.contextPath}/products?category=4">
                <img src="${pageContext.request.contextPath}/images/aonu.png" width="300" height="300" alt="Áo Nữ">
                <h3>Áo Nữ</h3>
            </a>
        </div>
        <div class="category-item">
            <a href="${pageContext.request.contextPath}/products?category=5">
                <img src="${pageContext.request.contextPath}/images/quannu.png" width="300" height="300" alt="Quần Nữ">
                <h3>Quần Nữ</h3>
            </a>
        </div>
        <div class="category-item">
            <a href="${pageContext.request.contextPath}/products?category=6">
                <img src="${pageContext.request.contextPath}/images/giaynu.png" width="300" height="300" alt="Giày Nữ">
                <h3>Giày Nữ</h3>
            </a>
        </div>
        <div class="category-item">
            <a href="${pageContext.request.contextPath}/products?category=7">
                <img src="${pageContext.request.contextPath}/images/vaynu.png" width="300" height="300" alt="Váy Nữ">
                <h3>Váy Nữ</h3>
            </a>
        </div>
        <div class="category-item">
            <a href="${pageContext.request.contextPath}/products?category=8">
                <img src="${pageContext.request.contextPath}/images/phukien.png" width="300" height="300" alt="Phụ Kiện">
                <h3>Phụ Kiện</h3>
            </a>
        </div>
    </div>
</section>

<!-- New Arrivals Section -->
    <section id="new-arrivals">
        <div class="full-width-border">
            <h2>New Arrivals</h2>
        </div>
        <div class="product-grid">
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=New+Clothing+1" alt="New Clothing 1">
                <h3>New Clothing 1</h3>
                <p>$29.99</p>
            </div>
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=New+Clothing+2" alt="New Clothing 2">
                <h3>New Clothing 2</h3>
                <p>$39.99</p>
            </div>
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=New+Clothing+3" alt="New Clothing 3">
                <h3>New Clothing 3</h3>
                <p>$49.99</p>
            </div>
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=New+Clothing+3" alt="New Clothing 3">
                <h3>New Clothing 3</h3>
                <p>$49.99</p>
            </div>
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=New+Clothing+3" alt="New Clothing 3">
                <h3>New Clothing 3</h3>
                <p>$49.99</p>
            </div>
        </div>
    </section>

    <!-- Best Sellers Section -->
    <section id="best-sellers">
        <div class="full-width-border">
            <h2>Best Sellers</h2>
        </div>
        <div class="product-grid">
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=Best+Seller+1" alt="Best Seller 1">
                <h3>Best Seller 1</h3>
                <p>$29.99</p>
            </div>
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=Best+Seller+2" alt="Best Seller 2">
                <h3>Best Seller 2</h3>
                <p>$39.99</p>
            </div>
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=Best+Seller+3" alt="Best Seller 3">
                <h3>Best Seller 3</h3>
                <p>$49.99</p>
            </div>
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=Best+Seller+3" alt="Best Seller 3">
                <h3>Best Seller 4</h3>
                <p>$49.99</p>
            </div>
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=Best+Seller+3" alt="Best Seller 3">
                <h3>Best Seller 5</h3>
                <p>$49.99</p>
            </div>
        </div>
    </section>

    <!-- Sale Section -->
    <section id="sale">
        <div class="full-width-border">
            <h2>On Sale</h2>
        </div>
        <div class="product-grid">
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=Sale+Item+1" alt="Sale Item 1">
                <h3>Sale Item 1</h3>
                <p>$19.99 <span class="original-price">$29.99</span></p>
            </div>
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=Sale+Item+2" alt="Sale Item 2">
                <h3>Sale Item 2</h3>
                <p>$29.99 <span class="original-price">$39.99</span></p>
            </div>
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=Sale+Item+3" alt="Sale Item 3">
                <h3>Sale Item 3</h3>
                <p>$39.99 <span class="original-price">$49.99</span></p>
            </div>
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=Sale+Item+3" alt="Sale Item 3">
                <h3>Sale Item 4</h3>
                <p>$39.99 <span class="original-price">$49.99</span></p>
            </div>
            <div class="product-item">
                <img src="https://via.placeholder.com/200x200?text=Sale+Item+3" alt="Sale Item 3">
                <h3>Sale Item 5</h3>
                <p>$39.99 <span class="original-price">$49.99</span></p>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 StyleNest - All Rights Reserved</p>
        </div>
    </footer>
</body>
</html>

