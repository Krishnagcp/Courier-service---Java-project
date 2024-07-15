package com.dao;

public class ShipmentDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/courierdb";
    private String jdbcUsername = "root";
    private String jdbcPassword = "root";

    private static final String SELECT_SHIPMENT_BY_TRACKING_NUMBER = "SELECT * FROM shipments WHERE tracking_number = ?";

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

    public Shipment getShipmentByTrackingNumber(String trackingNumber) {
        Shipment shipment = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SHIPMENT_BY_TRACKING_NUMBER)) {
            preparedStatement.setString(1, trackingNumber);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                String sender = rs.getString("sender");
                String receiver = rs.getString("receiver");
                String address = rs.getString("address");
                String packageDetails = rs.getString("package_details");
                shipment = new Shipment(trackingNumber, sender, receiver, address, packageDetails);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return shipment;
    }
}
