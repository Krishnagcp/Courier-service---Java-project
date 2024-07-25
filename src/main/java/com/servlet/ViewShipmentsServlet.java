package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Shipment;

@WebServlet("/ViewShipmentsServlet")
public class ViewShipmentsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        
        if (username == null) {
            response.sendRedirect("track.jsp");
            return;
        }

        ArrayList<Shipment> shipments = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/courierdb", "root", "root");

            String sql = "SELECT * FROM shipments WHERE username = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            
            ResultSet rs = pstmt.executeQuery();
            
            while (rs.next()) {
                Shipment shipment = new Shipment();
                shipment.setShipmentId(rs.getString("shipment_id"));
                shipment.setSenderName(rs.getString("sendername"));
                shipment.setReceiverName(rs.getString("receiver_name"));
                shipment.setStatusOfProductReceivedByReceiver(rs.getString("status_of_product_received_by_receiver"));
                shipment.setDateOfProductReceivedByReceiver(rs.getDate("date_of_product_received_by_receiver"));
                // Set other shipment details
                
                shipments.add(shipment);
            }
            
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        request.setAttribute("shipments", shipments);
        request.getRequestDispatcher("viewShipments.jsp").forward(request, response);
    }
}


