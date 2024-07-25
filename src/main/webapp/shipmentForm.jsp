<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
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
<link rel="stylesheet" href="style.css">
<style>
	nav a {
            margin: 0 10px;
            color: white;
            text-decoration: none;
        }
        nav a.active {
        	color: white;
            text-decoration: underline;
        }
    .main-content {
        padding: 2em;
        flex: 1;
    }
    .main-content h2{
    	text-align:center;
    }
    form {
        max-width: 600px;
        margin: 0 auto;
        padding: 1em;
        border: 1px solid #ccc;
        border-radius: 10px;
        background: #fff;
    }
    form .form-group {
        display: flex;
        flex-direction: column;
        margin-bottom: 1em;
    }
    form .form-group label {
        margin-bottom: 0.5em;
    }
    form .form-group input,
    form .form-group textarea,
    form .form-group select {
        padding: 0.5em;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    form button {
        width: 100%;
        padding: 1em;
        background-color: #333;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
<script>
function calculatePayment() {
    const weight = parseFloat(document.getElementById("weight").value);
    const shipmentType = document.getElementById("shipmentType").value;
    
    let baseRate = 100.00;
    let ratePerKg = 20.00;
    
    if (shipmentType === "Express") {
        baseRate = 300.00;
        ratePerKg = 35.00;
    }
    
    const payment = baseRate + (ratePerKg * weight);
    document.getElementById("payment").value = payment.toFixed(2);
}

window.onload = function() {
    document.getElementById("weight").addEventListener("input", calculatePayment);
    document.getElementById("shipmentType").addEventListener("change", calculatePayment);
};
</script>
</head>
<body>
<header>
    <h1>GoCourier</h1>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="ship.jsp" class="active">Ship</a>
        <a href="contact.jsp">Contact</a>
        <a href="track.jsp">Track</a>
    </nav>
</header>

<div class="main-content">
    <h2>Shipment Form</h2>
    <form action="SubmitShipmentServlet" method="post">
        <div class="form-group">
            <label for="sender">Sender Name:</label>
            <input type="text" id="sender" name="sender" required>
        </div>
        
        <div class="form-group">
            <label for="senderAddress">Sender Address:</label>
            <input type="text" id="senderAddress" name="senderAddress" required>
        </div>
        
        <div class="form-group">
            <label for="receiver">Receiver Name:</label>
            <input type="text" id="receiver" name="receiver" required>
        </div>
        
        <div class="form-group">
            <label for="address">Receiver Address:</label>
            <input type="text" id="address" name="address" required>
        </div>
        
        <div class="form-group">
            <label for="contactNumber">Receiver Contact Number:</label>
            <input type="text" id="contactNumber" name="contactNumber" required>
        </div>
        
        <div class="form-group">
            <label for="weight">Package Weight (kg):</label>
            <input type="number" step="0.01" id="weight" name="weight" required>
        </div>
        
        <div class="form-group">
            <label for="shipmentType">Shipment Type:</label>
            <select id="shipmentType" name="shipmentType" required>
                <option value="Standard">Standard</option>
                <option value="Express">Express</option>
            </select>
        </div>
        
        <div class="form-group">
            <label for="packageDetails">Package Details:</label>
            <textarea id="packageDetails" name="packageDetails" required></textarea>
        </div>
        
        <div class="form-group">
            <label for="payment">Payment Amount:</label>
            <input type="number" id="payment" name="payment" readonly>
        </div>
        
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

