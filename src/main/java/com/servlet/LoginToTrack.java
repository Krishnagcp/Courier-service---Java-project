package com.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/LoginToTrack")
public class LoginToTrack extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usernameOrEmail = request.getParameter("usernameOrEmail");
        String password = request.getParameter("password");

        System.out.println("Attempting login with username/email: " + usernameOrEmail);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");  // Use the new MySQL driver
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/courierdb", "root", "root");

            String sql = "SELECT username FROM users WHERE (username = ? OR email = ?) AND password = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, usernameOrEmail);
            pstmt.setString(2, usernameOrEmail);
            pstmt.setString(3, password);  // Ensure this is securely hashed in a real application

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                String username = rs.getString("username");
                System.out.println("Login successful for username: " + username);
                
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                response.sendRedirect("ViewShipmentsServlet");
            } else {
                System.out.println("Login failed for username/email: " + usernameOrEmail);
                response.sendRedirect("track.jsp?error=invalid");
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("track.jsp?error=exception");
        }
    }
}
