package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TrackShipmentServlet")
public class TrackShipmentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String trackingNumber = request.getParameter("trackingNumber");

        ShipmentDAO shipmentDAO = new ShipmentDAO();
        Shipment shipment = shipmentDAO.getShipmentByTrackingNumber(trackingNumber);

        if (shipment != null) {
            request.setAttribute("shipment", shipment);
            request.getRequestDispatcher("trackResult.jsp").forward(request, response);
        } else {
            response.sendRedirect("track.jsp");
        }
    }
}
