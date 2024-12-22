<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Admin.Product" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/products.css">
<%
    List<Product> productList = (List<Product>) request.getAttribute("productList");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý sản phẩm</title>
</head>
<body>
<!-- Header -->
<header>
    Quản lý sản phẩm
</header>

<!-- Main content -->
<main>
    <h1>Danh sách sản phẩm</h1>

    <!-- Nút thêm sản phẩm mới -->
    <a href="ProductServlet?action=new" class="btn-add-product">+ Thêm sản phẩm mới</a>

    <!-- Bảng sản phẩm -->
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>SKU</th>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Danh mục</th>
            <th>Hình ảnh</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <% if (productList != null) {
            for (Product product : productList) { %>
        <tr>
            <td><%= product.getProductId() %></td>
            <td><%= product.getSKU() %></td>
            <td><%= product.getDescription() %></td>
            <td><%= product.getPrice() %> VND</td>
            <td><%= product.getCategoryId() %></td>
            <td>
                <img src="<%= product.getProductLinks() %>" alt="Hình ảnh sản phẩm" />
            </td>
            <td class="action-links">
                <a href="ProductServlet?action=edit&id=<%= product.getProductId() %>" class="edit">Sửa</a>
                <a href="ProductServlet?action=delete&id=<%= product.getProductId() %>"
                   onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này không?');"
                   class="delete">Xóa</a>
            </td>
        </tr>
        <% } } else { %>
        <tr>
            <td colspan="7" style="text-align: center;">Không có sản phẩm nào!</td>
        </tr>
        <% } %>
        </tbody>
    </table>
</main>

<!-- Footer -->
<footer>
    &copy; 2024 Quản lý sản phẩm | Admin Dashboard
</footer>
</body>
</html>
