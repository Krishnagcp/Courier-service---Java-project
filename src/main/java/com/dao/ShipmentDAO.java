package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.model.Shipment;
import java.util.UUID;

public class ShipmentDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/courierdb";
    private String jdbcUsername = "root";
    private String jdbcPassword = "root";

    private static final String INSERT_SHIPMENT_SQL = "INSERT INTO shipments (username, shipment_id, sendername, senderaddress, receiver_name, receiver_contact_no, receiver_address, weight, shipment_type, package_details, payment) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    protected Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public boolean submitShipment(Shipment shipment) {
        boolean isSubmitted = false;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SHIPMENT_SQL)) {

            String shipmentId = UUID.randomUUID().toString();
            preparedStatement.setString(1, shipment.getUsername());
            preparedStatement.setString(2, shipmentId);
            preparedStatement.setString(3, shipment.getSenderName());
            preparedStatement.setString(4, shipment.getSenderAddress());
            preparedStatement.setString(5, shipment.getReceiverName());
            preparedStatement.setString(6, shipment.getReceiverContactNo());
            preparedStatement.setString(7, shipment.getReceiverAddress());
            preparedStatement.setDouble(8, shipment.getWeight());
            preparedStatement.setString(9, shipment.getShipmentType());
            preparedStatement.setString(10, shipment.getPackageDetails());
            preparedStatement.setDouble(11, shipment.getPayment());

            preparedStatement.executeUpdate();
            isSubmitted = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isSubmitted;
    }
}


