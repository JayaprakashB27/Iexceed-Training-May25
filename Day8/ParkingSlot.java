class ParkingSlot {
    String slotId;
    String vehicleType;
    String carNumber;
    String customerId;
    String date;
    String ticket;
    String checkInTime; 
    String checkOutTime; 

    public ParkingSlot(String slotId, String vehicleType, String carNumber, String customerId, String date, String ticket, String checkInTime) {
        this.slotId = slotId;
        this.vehicleType = vehicleType;
        this.carNumber = carNumber;
        this.customerId = customerId;
        this.date = date;
        this.ticket = ticket;
        this.checkInTime = checkInTime;
    }
}