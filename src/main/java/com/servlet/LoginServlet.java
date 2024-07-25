package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.UserDAO;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String identifier = request.getParameter("identifier");
        String password = request.getParameter("password");

        UserDAO userDAO = new UserDAO();
        String username = userDAO.validateUser(identifier, password);
        System.out.println("Username from validation: " + username);

        if (username != null) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("shipmentForm.jsp");
        } else {
            request.setAttribute("loginError", "Invalid credentials. Please try again.");
            request.getRequestDispatcher("ship.jsp").forward(request, response);
        }
    }
}


