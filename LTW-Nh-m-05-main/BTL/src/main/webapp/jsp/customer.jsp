<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Management</title>
</head>
<body>
<h1>Manage Customers</h1>

<!-- Form to add a new customer -->
<form action="customer" method="post">
    <input type="hidden" name="action" value="add">
    <label for="first_name">First Name:</label>
    <input type="text" id="first_name" name="first_name" required><br><br>

    <label for="last_name">Last Name:</label>
    <input type="text" id="last_name" name="last_name" required><br><br>

    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required><br><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email"><br><br>

    <label for="phone_number">Phone Number:</label>
    <input type="text" id="phone_number" name="phone_number" required><br><br>

    <button type="submit">Add Customer</button>
</form>

<h2>Customer List</h2>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Username</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customers}">
        <tr>
            <td>${customer.customerId}</td>
            <td>${customer.firstName}</td>
            <td>${customer.lastName}</td>
            <td>${customer.username}</td>
            <td>${customer.email}</td>
            <td>${customer.phoneNumber}</td>
            <td>
                <a href="customer?action=edit&customerId=${customer.customerId}">Edit</a>
                <a href="customer?action=delete&customerId=${customer.customerId}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
