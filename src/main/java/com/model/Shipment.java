package com.model;

import java.sql.Date;

public class Shipment {
	private String shipmentId;
	private String username;
    private String senderName;
    private String senderAddress;
    private String receiverName;
    private String receiverAddress;
    private String receiverContactNo;
    private double weight;
    private String shipmentType;
    private String packageDetails;
    private double payment;
    private String statusOfProductReceivedByReceiver;
    private Date dateOfProductReceivedByReceiver;
    
    public String getShipmentId() {
        
		return shipmentId;
    }

    public void setShipmentId(String shipmentId) {
        this.shipmentId = shipmentId;
    }
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSenderName() {
        return senderName;
    }

    public void setSenderName(String senderName) {
        this.senderName = senderName;
    }

    public String getSenderAddress() {
        return senderAddress;
    }

    public void setSenderAddress(String senderAddress) {
        this.senderAddress = senderAddress;
    }

    public String getReceiverName() {
        return receiverName;
    }

    public void setReceiverName(String receiverName) {
        this.receiverName = receiverName;
    }

    public String getReceiverAddress() {
        return receiverAddress;
    }

    public void setReceiverAddress(String receiverAddress) {
        this.receiverAddress = receiverAddress;
    }

    public String getReceiverContactNo() {
        return receiverContactNo;
    }

    public void setReceiverContactNo(String receiverContactNo) {
        this.receiverContactNo = receiverContactNo;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public String getShipmentType() {
        return shipmentType;
    }

    public void setShipmentType(String shipmentType) {
        this.shipmentType = shipmentType;
    }

    public String getPackageDetails() {
        return packageDetails;
    }

    public void setPackageDetails(String packageDetails) {
        this.packageDetails = packageDetails;
    }

    public double getPayment() {
        return payment;
    }

    public void setPayment(double payment) {
        this.payment = payment;
    }
    public String getStatusOfProductReceivedByReceiver() {
        
		return statusOfProductReceivedByReceiver;
    }

    public void setStatusOfProductReceivedByReceiver(String statusOfProductReceivedByReceiver) {
        this.statusOfProductReceivedByReceiver = statusOfProductReceivedByReceiver;
    }

    public Date getDateOfProductReceivedByReceiver() {
        
		return dateOfProductReceivedByReceiver;
    }

    public void setDateOfProductReceivedByReceiver(Date dateOfProductReceivedByReceiver) {
        this.dateOfProductReceivedByReceiver = dateOfProductReceivedByReceiver;
    }
}

