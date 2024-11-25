package servlet;

import DAO.CustomerDAO;
import model.Customer;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class CustomerServlet extends HttpServlet {

    private final CustomerDAO customerDAO = new CustomerDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("edit".equals(action)) {
            int customerId = Integer.parseInt(request.getParameter("customerId"));
            Customer customer = customerDAO.getCustomerById(customerId);
            request.setAttribute("customer", customer);
            request.getRequestDispatcher("/jsp/editCustomer.jsp").forward(request, response);
        } else if ("delete".equals(action)) {
            int customerId = Integer.parseInt(request.getParameter("customerId"));
            try {
                customerDAO.deleteCustomer(customerId);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            response.sendRedirect("customer.jsp");
        } else {
            List<Customer> customers = null;
            try {
                customers = customerDAO.getAllCustomers();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            request.setAttribute("customers", customers);
            request.getRequestDispatcher("/jsp/customer.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            Customer customer = new Customer();
            customer.setFirstName(request.getParameter("first_name"));
            customer.setLastName(request.getParameter("last_name"));
            customer.setUsername(request.getParameter("username"));
            customer.setPasswordHash(request.getParameter("password"));
            customer.setEmail(request.getParameter("email"));
            customer.setPhoneNumber(request.getParameter("phone_number"));
            try {
                customerDAO.addCustomer(customer);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            response.sendRedirect("customer.jsp");
        } else if ("update".equals(action)) {
            int customerId = Integer.parseInt(request.getParameter("customer_id"));
            Customer customer = new Customer();
            customer.setCustomerId(customerId);
            customer.setFirstName(request.getParameter("first_name"));
            customer.setLastName(request.getParameter("last_name"));
            customer.setUsername(request.getParameter("username"));
            customer.setPasswordHash(request.getParameter("password"));
            customer.setEmail(request.getParameter("email"));
            customer.setPhoneNumber(request.getParameter("phone_number"));
            try {
                customerDAO.updateCustomer(customer);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            response.sendRedirect("customer.jsp");
        }
    }
}
