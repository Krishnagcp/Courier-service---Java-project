<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoCourier - Track Shipments</title>
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
    
    form {
        max-width: 400px;
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
    form .form-group input {
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
</head>
<body>
<header>
    <h1>GoCourier</h1>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="ship.jsp">Ship</a>
        <a href="contact.jsp">Contact</a>
        <a href="track.jsp" class="active">Track</a>
    </nav>
</header>

<div class="main-content">
    <center><h2>Track Shipments</h2></center>
    <form action="LoginToTrack" method="post">
        <div class="form-group">
            <label for="usernameOrEmail">Username or Email:</label>
            <input type="text" id="usernameOrEmail" name="usernameOrEmail" required>
        </div>
        
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        
        <button type="submit">Login</button>
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


