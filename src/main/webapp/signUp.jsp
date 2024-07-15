<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoCourier - Sign Up</title>
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
        display: flex;
        flex: 1;
        align-items: center;
        justify-content: center;
    }
    .signup-form {
        width: 100%;
        max-width: 300px;
        background-color: #fff;
        padding: 2em;
        border: 1px solid #ccc;
        border-radius: 10px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .signup-form input[type="text"], .signup-form input[type="password"] {
        width: 100%;
        padding: 1em;
        margin: 0.5em 0em;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    .signup-form button {
        width: 100%;
        padding: 1em;
        background-color: #333;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
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
    <div class="signup-form">
        <h3>Sign Up</h3>
        <form action="SignupServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
            <button type="submit">Sign Up</button>
        </form>
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

