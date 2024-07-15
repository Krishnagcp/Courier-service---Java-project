<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
    HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("ship.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoCourier - Shipment Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }
    header, footer {
        background-color: #333;
        color: white;
        text-align: center;
        padding: 1em 0;
    }
    header a, footer a {
        color: white;
        text-decoration: none;
        margin: 0 1em;
    }
    .main-content {
        padding: 2em;
        flex: 1;
    }
</style>
</head>
<body>
<header>
    <h1>GoCourier</h1>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="ship.jsp">Ship</a>
        <a href="contact.jsp">Contact</a>
        <a href="track.jsp">Track</a>
    </nav>
</header>

<div class="main-content">
    <h2>Shipment Form</h2>
    <form action="SubmitShipmentServlet" method="post">
        <label for="sender">Sender Name:</label>
        <input type="text" id="sender" name="sender" required>
        
        <label for="receiver">Receiver Name:</label>
        <input type="text" id="receiver" name="receiver" required>
        
        <label for="address">Receiver Address:</label>
        <input type="text" id="address" name="address" required>
        
        <label for="packageDetails">Package Details:</label>
        <textarea id="packageDetails" name="packageDetails" required></textarea>
        
        <button type="submit">Submit</button>
    </form>
</div>

<footer>
    <p>&copy; 2024 GoCourier. All rights reserved.</p>
    <nav>
        <a href="#">Privacy Policy</a>
        <a href="#">Terms of Service</a>
    </nav>
</footer>
</body>
</html>
