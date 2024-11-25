package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserLogin {

    public boolean validateUser(String username, String password) {
        String sql = "SELECT * FROM customers WHERE username = ? AND passwordHash = ?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, username);
            pstmt.setString(2, password);
            ResultSet rs = pstmt.executeQuery();

            return rs.next();  // Trả về true nếu có kết quả (người dùng hợp lệ)
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}