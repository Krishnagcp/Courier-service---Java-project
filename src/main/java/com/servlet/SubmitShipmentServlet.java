package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.ShipmentDAO;
import com.model.Shipment;

@WebServlet("/SubmitShipmentServlet")
public class SubmitShipmentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        if (username == null) {
            response.sendRedirect("ship.jsp");
            return;
        }

        String senderName = request.getParameter("sender");
        String senderAddress = request.getParameter("senderAddress");
        String receiverName = request.getParameter("receiver");
        String receiverAddress = request.getParameter("address");
        String receiverContactNo = request.getParameter("contactNumber");
        double weight = Double.parseDouble(request.getParameter("weight"));
        String shipmentType = request.getParameter("shipmentType");
        String packageDetails = request.getParameter("packageDetails");
        double payment = Double.parseDouble(request.getParameter("payment"));

        Shipment shipment = new Shipment();
        shipment.setUsername(username);
        shipment.setSenderName(senderName);
        shipment.setSenderAddress(senderAddress);
        shipment.setReceiverName(receiverName);
        shipment.setReceiverAddress(receiverAddress);
        shipment.setReceiverContactNo(receiverContactNo);
        shipment.setWeight(weight);
        shipment.setShipmentType(shipmentType);
        shipment.setPackageDetails(packageDetails);
        shipment.setPayment(payment);

        ShipmentDAO shipmentDAO = new ShipmentDAO();
        boolean isSubmitted = shipmentDAO.submitShipment(shipment);

        if (isSubmitted) {
            response.sendRedirect("success.jsp");
        } else {
            request.setAttribute("submissionError", "There was an error submitting the shipment. Please try again.");
            request.getRequestDispatcher("shipmentForm.jsp").forward(request, response);
        }
    }
}


