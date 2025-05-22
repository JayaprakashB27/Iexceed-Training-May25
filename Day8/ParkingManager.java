interface ParkingManager {
    void parkVehicle(ParkingSlot slot);
    void unparkVehicle(String customerId, String ticket);
    boolean isSlotAvailable(String vehicleType);
    String getAvailableSlot(String vehicleType);
}