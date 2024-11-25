package DAO;

import java.sql.*;
import model.Customer;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {

    // Method to get all customers
    public List<Customer> getAllCustomers() throws SQLException {
        List<Customer> customers = new ArrayList<>();
        String query = "SELECT * FROM customers";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Customer customer = new Customer();
                customer.setCustomerId(rs.getInt("customer_id"));
                customer.setFirstName(rs.getString("first_name"));
                customer.setLastName(rs.getString("last_name"));
                customer.setUsername(rs.getString("username"));
                customer.setEmail(rs.getString("email"));
                customer.setPhoneNumber(rs.getString("phone_number"));
                customers.add(customer);
            }
        }
        return customers;
    }

    // Method to add a new customer
    public boolean addCustomer(Customer customer) throws SQLException {
        String query = "INSERT INTO customers (first_name, last_name, username, passwordHash, email, phone_number) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {

            ps.setString(1, customer.getFirstName());
            ps.setString(2, customer.getLastName());
            ps.setString(3, customer.getUsername());
            ps.setString(4, customer.getPasswordHash());
            ps.setString(5, customer.getEmail());
            ps.setString(6, customer.getPhoneNumber());
            return ps.executeUpdate() > 0;
        }
    }

    // Method to update a customer
    public boolean updateCustomer(Customer customer) throws SQLException {
        String query = "UPDATE customers SET first_name = ?, last_name = ?, username = ?, passwordHash = ?, email = ?, phone_number = ? WHERE customer_id = ?";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {

            ps.setString(1, customer.getFirstName());
            ps.setString(2, customer.getLastName());
            ps.setString(3, customer.getUsername());
            ps.setString(4, customer.getPasswordHash());
            ps.setString(5, customer.getEmail());
            ps.setString(6, customer.getPhoneNumber());
            ps.setInt(7, customer.getCustomerId());
            return ps.executeUpdate() > 0;
        }
    }

    // Method to delete a customer
    public boolean deleteCustomer(int customerId) throws SQLException {
        String query = "DELETE FROM customers WHERE customer_id = ?";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {

            ps.setInt(1, customerId);
            return ps.executeUpdate() > 0;
        }
    }

    public Customer getCustomerById(int customerId) {
        return null;
    }
}
