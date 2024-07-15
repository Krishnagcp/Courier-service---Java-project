<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoCourier - Ship</title>
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
    .login-form-container {
        max-width: 400px;
        width: 100%;
        padding: 2em;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: left;
        margin: auto; /* Center horizontally */
    }
    .login-form-container h3 {
        font-size: 1.5em;
        margin-bottom: 1em;
        color: #2980b9;
    }
    .login-form {
        display: flex;
        flex-direction: column;
    }
    .login-form label {
        font-size: 1em;
        margin-bottom: 0.5em;
    }
    .login-form input[type="text"], .login-form input[type="password"] {
        width: 100%;
        padding: 1em;
        margin-bottom: 1em;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    .login-form button {
        width: 100%;
        padding: 1em;
        background-color: #2980b9;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .login-form button:hover {
        background-color: #1f5e7b;
    }
    .signup-link {
        text-align: center;
        margin-top: 1em;
    }
    .signup-link a {
        color: blue;
        text-decoration: none;
        font-weight: bold;
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
    <div class="login-form-container">
        <h3>Login</h3>
        <form action="LoginCont" method="post" class="login-form">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
            <button type="submit">Login</button>
        </form>
        <div class="signup-link">
            <h4>New User? <a href="signUp.jsp">Sign Up</a></h4>
        </div>
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

