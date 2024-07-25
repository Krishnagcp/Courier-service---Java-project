<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoCourier - Contact Us</title>
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
        display: flex;
        flex: 2;
        padding: 2em; 
        gap: 3em;
    }
    
    .contact-info {
        border: 1px solid #ccc;
        border-radius: 10px;
        background: #fff;
        padding: 2em;
        max-width: 500px;
        flex: 1;
    }
    
    .write-to-us {
        flex: 2;
        padding: 3em;
        border: 1px solid #ccc;
        border-radius: 10px;
        background: #fff;
    }
    
    .contact-info h3 {
        color: #8e44ad; /* Violet color for headings */
        margin-bottom: 0.5em;
    }
    .contact-info p {
        margin: 0.5em 0;
        color: #555; /* Darker gray for text */
    }
    
    .write-to-us h3 {
        color: #8e44ad; /* Violet color for headings */
        margin-bottom: 1em;
    }
    .write-to-us label {
        display: block;
        margin-bottom: 0.5em;
        text-align: left;
        color: #555; /* Darker gray for text */
    }
    .write-to-us input[type="text"],
    .write-to-us input[type="email"],
    .write-to-us textarea {
        width: 100%;
        padding: 0.8em;
        margin-bottom: 1em;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    .write-to-us button {
        width: 100%;
        padding: 1em;
        background-color: #8e44ad; /* Violet color for button */
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .write-to-us button:hover {
        background-color: #6a337e; /* Darker violet for hover state */
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
        <a href="contact.jsp" class="active">Contact</a>
        <a href="track.jsp">Track</a>
    </nav>
</header>

<div class="main-content">
    <div class="contact-info">
        <h3>Company Address</h3>
        <p>1234 Courier Lane</p>
        <p>City, State, ZIP</p>
        <br>
        <h3>Contact Number</h3>
        <p>+1 234 567 890</p>
        <br>
        <h3>Email Address</h3>
        <p>support@gocourier.com</p>
    </div>
    <div class="write-to-us">
        <h3>Write to Us</h3>
        <form action="ContactServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" required></textarea>
            
            <button type="submit">Submit</button>
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

