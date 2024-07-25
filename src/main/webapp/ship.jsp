<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoCourier - Ship</title>
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
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }
    .login-form {
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 10px;
        padding: 2em;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
        text-align: center;
    }
    .login-form h2 {
        color: #8e44ad; /* Violet color */
        margin-bottom: 1em;
    }
    .login-form label {
        display: block;
        margin-bottom: 0.5em;
        text-align: left;
        color: #555; /* Darker gray for text */
    }
    .login-form input[type="text"],
    .login-form input[type="password"] {
        width: 100%;
        padding: 0.8em;
        margin-bottom: 1em;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    .login-form button {
        width: 100%;
        padding: 1em;
        background-color: #8e44ad; /* Violet color */
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .login-form button:hover {
        background-color: #6a337e; /* Darker violet for hover state */
    }
    .login-signup {
        text-align: center;
        margin-top: 1em;
    }
    .login-signup a {
        color: #8e44ad; /* Violet color */
        text-decoration: none;
    }
    .login-signup a:hover {
        text-decoration: underline;
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
    <div class="login-form">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
	    <label for="identifier">Username or Email:</label>
	    <input type="text" id="identifier" name="identifier" required>
	    
	    <label for="password">Password:</label>
	    <input type="password" id="password" name="password" required>
	    
	    <button type="submit">Login</button>
	    <p><a href="signUp.jsp">Sign Up</a> | <a href="staffLogin.jsp">Staff Login</a></p>
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

