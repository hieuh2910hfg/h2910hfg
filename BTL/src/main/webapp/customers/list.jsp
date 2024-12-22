<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Admin.Customer" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/customers.css">
<%
    // Lấy danh sách khách hàng từ request attribute
    List<Customer> customerList = (List<Customer>) request.getAttribute("customerList");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng</title>
</head>
<body>
<h1>Danh sách khách hàng</h1>
<!-- Thêm class cho nút Thêm khách hàng -->
<a href="CustomerServlet?action=new" class="btn btn-add">Thêm khách hàng mới</a>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Họ</th>
        <th>Tên</th>
        <th>Tên đăng nhập</th>
        <th>Mật khẩu</th> <!-- passwordHash sau username -->
        <th>Email</th>
        <th>Số điện thoại</th>
        <th>Hành động</th>
    </tr>
    </thead>
    <tbody>
    <% if (customerList != null) {
        for (Customer customer : customerList) { %>
    <tr>
        <td><%= customer.getCustomerId() %></td>
        <td><%= customer.getFirstName() %></td>
        <td><%= customer.getLastName() %></td>
        <td><%= customer.getUsername() %></td>
        <td><%= customer.getPasswordHash() %></td> <!-- Hiển thị passwordHash (mã hóa) -->
        <td><%= customer.getEmail() %></td>
        <td><%= customer.getPhoneNumber() %></td>
        <td>
            <!-- Thêm class cho các nút hành động -->
            <a href="CustomerServlet?action=edit&id=<%= customer.getCustomerId() %>" class="btn btn-edit">Sửa</a>
            <a href="CustomerServlet?action=delete&id=<%= customer.getCustomerId() %>" class="btn btn-delete"
               onclick="return confirm('Bạn có chắc chắn muốn xóa khách hàng này không?');">Xóa</a>
        </td>
    </tr>
    <% } } else { %>
    <tr>
        <td colspan="8">Không có khách hàng nào!</td>
    </tr>
    <% } %>
    </tbody>
</table>
</body>
</html>
