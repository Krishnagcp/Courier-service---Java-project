<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoCourier - Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
        background-color: #f0f8ff;
        color: #333;
    }
    header, footer {
        background-color: #2c3e50;
        color: white;
        text-align: center;
        padding: 1em 0;
    }
    header a, footer a {
        color: white;
        text-decoration: none;
        margin: 0 1em;
    }
    header a.active {
        color: #ecf0f1;
        font-weight: bold;
    }
    .main-content {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        flex: 1;
        padding: 2em;
        text-align: center;
    }
    .main-content h2 {
        font-size: 2.5em;
        margin-bottom: 0.5em;
    }
    .main-content p {
        font-size: 1.2em;
        margin-bottom: 1em;
        max-width: 600px;
    }
    .tagline {
        font-size: 1.5em;
        margin-top: 0.5em;
        font-weight: bold;
        color: #2980b9;
    }
    .btn {
        background-color: #2980b9;
        color: white;
        padding: 1em 2em;
        margin-top: 1em;
        text-decoration: none;
        border-radius: 5px;
        display: inline-block;
    }
    .btn:hover {
        background-color: #1f5e7b;
    }
</style>
</head>
<body>

<header>
    <h1>GoCourier</h1>
    <nav>
        <a href="index.jsp" class="active">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="ship.jsp">Ship</a>
        <a href="contact.jsp">Contact</a>
        <a href="track.jsp">Track</a>
    </nav>
</header>

<div class="main-content">
    <h2>Welcome to GoCourier</h2>
    <p>Your trusted partner for fast, reliable, and affordable courier services.</p>
    <p class="tagline">"Delivering Your Promises, One Parcel at a Time"</p>
    <p class="tagline">"Connecting People, One Delivery at a Time"</p>
    <a href="about.jsp" class="btn">Learn More</a>
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
