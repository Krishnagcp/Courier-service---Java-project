<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoCourier - Sign Up</title>
<link rel="stylesheet" type="text/css" href="style.css">
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
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    flex: 1;
	    padding: 2em;
	}
	
	.signup-form {
	    width: 100%;
	    max-width: 500px;
	    background-color: #fff;
	    padding: 2em;
	    border: 1px solid #ccc;
	    border-radius: 10px;
	    display: flex;
	    flex-direction: column;
	}
	
	.signup-form label {
	    margin-bottom: 0.5em;
	    font-weight: bold;
	}
	
	.signup-form input[type="text"],
	.signup-form input[type="password"],
	.signup-form input[type="email"] {
	    width: 100%;
	    padding: 0.8em;
	    margin-bottom: 1em;
	    border: 1px solid #ccc;
	    border-radius: 5px;
	    box-sizing: border-box;
	}
	
	.signup-form .error {
	    color: red;
	    margin: 0.5em 0;
	}
	
	.signup-form button {
	    width: 100%;
	    padding: 1em;
	    background-color: #2980b9;
	    color: white;
	    border: none;
	    border-radius: 5px;
	    cursor: pointer;
	}
	
	.signup-form button:hover {
	    background-color: #1f5e7b;
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
    <div class="signup-form">
        <h3>Sign Up</h3>
        <form action="SignupServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            <c:if test="${not empty usernameError}">
                <div class="error">${usernameError}</div>
            </c:if>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <c:if test="${not empty emailError}">
                <div class="error">${emailError}</div>
            </c:if>

            <label for="first_name">First Name:</label>
            <input type="text" id="first_name" name="first_name" required>

            <label for="last_name">Last Name:</label>
            <input type="text" id="last_name" name="last_name" required>

            <label for="contact_no">Contact Number:</label>
            <input type="text" id="contact_no" name="contact_no" required>

            <button type="submit">Sign Up</button>
            <c:if test="${not empty registrationError}">
                <div class="error">${registrationError}</div>
            </c:if>
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

