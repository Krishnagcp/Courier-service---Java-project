package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.UserDAO;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String contactNo = request.getParameter("contact_no");

        UserDAO userDAO = new UserDAO();
        boolean hasError = false;

        
        if (userDAO.isUsernameExists(username)) {
            request.setAttribute("usernameError", "Username already exists.");
            hasError = true;
        }
        
        if (userDAO.isEmailExists(email)) {
            request.setAttribute("emailError", "Email already exists.");
            hasError = true;
        }

        if (hasError) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("signUp.jsp");
            dispatcher.forward(request, response);
            return;
        }

        
        if (userDAO.registerUser(username, password, email, firstName, lastName, contactNo)) {
            response.sendRedirect("ship.jsp");
        } else {
            request.setAttribute("registrationError", "Registration failed. Please try again.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("signUp.jsp");
            dispatcher.forward(request, response);
        }
    }
}

