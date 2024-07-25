<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoCourier - Success</title>
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
        text-align: center;
    }
    .main-content h2 {
        color: #333;
    }
    .main-content p {
        font-size: 1.2em;
        color: #555;
    }
</style>
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
    <h2>Shipment Submitted Successfully!</h2>
    <p>Thank you for using GoCourier. Your shipment has been successfully submitted.</p>
    <p><a href="shipmentForm.jsp">Submit another shipment</a></p>
    <p><a href="index.jsp">Return to Home</a></p>
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
