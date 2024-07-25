<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList,java.util.Date, java.text.SimpleDateFormat, java.sql.Timestamp, com.model.Shipment" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%
    
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("ship.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>View Shipments</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
        }
        
        nav a {
            margin: 0 10px;
            color: white;
            text-decoration: none;
        }
        nav a.active {
        	color: white;
            text-decoration: underline;
        }
        main {
            flex: 1;
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        footer nav {
            display: flex;
            justify-content: center;
            gap: 10px;
        }
    </style>
</head>
<body>
<header>
    <h1>GoCourier</h1>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="ship.jsp" >Ship</a>
        <a href="contact.jsp">Contact</a>
        <a href="track.jsp" class="active">Track</a>
    </nav>
</header>
<main>
    <h2>My Shipments</h2>
    <table>
        <thead>
            <tr>
                <th>Shipment ID</th>
                <th>Sender Name</th>
                <th>Receiver Name</th>
                <th>Status of Delivery</th>
                <th>Date of Delivery</th>
            </tr>
        </thead>
        <tbody>
            <%
                ArrayList<Shipment> shipments = (ArrayList<Shipment>) request.getAttribute("shipments");
                if (shipments != null && !shipments.isEmpty()) {
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    for (Shipment shipment : shipments) {
                        String status = shipment.getStatusOfProductReceivedByReceiver();
                        String statusText;
                        if ("0".equals(status)) {
                            statusText = "Not Delivered";
                        } else if ("1".equals(status)) {
                            statusText = "Delivered";
                        } else {
                            statusText = "Unknown";
                        }

                        Date receivedDate = shipment.getDateOfProductReceivedByReceiver();
                        String receivedDateText = (receivedDate == null) ? "-" : sdf.format(receivedDate);
            %>
                <tr>
                    <td><%= shipment.getShipmentId() %></td>
                    <td><%= shipment.getSenderName() %></td>
                    <td><%= shipment.getReceiverName() %></td>
                    <td><%= statusText %></td>
                    <td><%= receivedDateText %></td>
                </tr>
            <%
                    }
                } else {
            %>
                <tr>
                    <td colspan="5">No shipments found.</td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>
</main>
<footer>
    <p>&copy; 2024 GoCourier. All rights reserved.</p>
    <nav>
        <a href="#">Privacy Policy</a>
        <a href="#">Terms of Service</a>
    </nav>
</footer>
</body>
</html>

