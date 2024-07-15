<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoCourier - About Us</title>
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
        padding: 2em;
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .main-content h2 {
        font-size: 2.5em;
        margin-bottom: 0.5em;
        color: #2980b9;
    }
    .section {
        margin-bottom: 2em; /* Add margin between sections */
        padding: 1.5em;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: left;
        max-width: 800px; /* Limit width for better centering */
        width: 100%; /* Ensure full width */
        margin: auto; /* Center horizontally */
    }
    .section h3 {
        font-size: 2em;
        margin-bottom: 0.5em;
        color: #2980b9;
    }
    .section p {
        font-size: 1.2em;
        line-height: 1.6;
        color: #555;
    }
    .section ul {
        list-style-type: none;
        padding: 0;
    }
    .section ul li {
        font-size: 1.2em;
        margin-bottom: 0.5em;
        padding-left: 1.5em;
        text-align: left;
    }
    .section ul li::before {
        content: "•";
        color: #2980b9;
        font-weight: bold;
        display: inline-block;
        width: 1em;
        margin-left: -1em;
    }
    .industries {
        text-align: center;
        margin-top: 2em;
        max-width: 800px; 
        width: 100%; 
        margin: auto; 	
    }
    .industries h3 {
        font-size: 2em;
        color: #2980b9;
        margin-bottom: 1em;
    }
    .industry-list {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 1em;
        padding: 0;
        list-style-type: none;
        justify-content: center;
    }
    .industry-item {
        background-color: #ffffff;
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 1em;
        font-size: 1em;
        text-align: center;
        color: #555;
    }
</style>
</head>
<body>

<header>
    <h1>GoCourier</h1>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="about.jsp" class="active">About Us</a>
        <a href="ship.jsp">Ship</a>
        <a href="contact.jsp">Contact</a>
        <a href="track.jsp">Track</a>
    </nav>
</header>

<div class="main-content">
    <h2>About GoCourier</h2>
    <div class="section">
        <h3>Our Mission</h3>
        <p>To provide fast, reliable, and affordable courier services with a commitment to customer satisfaction and efficiency.</p>
    </div>
    <br>
    <div class="section">
        <h3>Our Vision</h3>
        <p>To be the leading courier service provider known for our exceptional delivery standards and customer-centric approach.</p>
    </div>
    <br>
    <div class="section">
        <h3>Core Values</h3>
        <ul>
            <li>Reliability and Timeliness</li>
            <li>Customer Satisfaction</li>
            <li>Integrity and Accountability</li>
            <li>Innovation and Efficiency</li>
        </ul>
    </div>
    <br>
    <div class="industries">
        <h3>Industries We Serve</h3>
        <ul class="industry-list">
            <li class="industry-item">Electronics</li>
            <li class="industry-item">Fashion & Apparel</li>
            <li class="industry-item">Automotive</li>
            <li class="industry-item">Healthcare</li>
            <li class="industry-item">Retail</li>
            <li class="industry-item">Food & Beverage</li>
            <li class="industry-item">Manufacturing</li>
            <li class="industry-item">Pharmaceuticals</li>
        </ul>
    </div>
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
