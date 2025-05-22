import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

class ParkingLot implements ParkingManager {

    Map<String, Set<String>> slotsByType = new HashMap<>();
    Map<String, String> slotTypeMap = new HashMap<>(); 
    private final Map<String, ParkingSlot> parkedVehicles = new HashMap<>();

    public ParkingLot(Map<String, Set<String>> initialSlots) {
        this.slotsByType = initialSlots;
        for (Map.Entry<String, Set<String>> entry : initialSlots.entrySet()) {
            String vType = entry.getKey();
            for (String slotId : entry.getValue()) {
                slotTypeMap.put(slotId, vType);
            }
        }
    }

    @Override
    public void parkVehicle(ParkingSlot slot) {
        String slotId = getAvailableSlot(slot.vehicleType);
        if (slotId != null) {
            slot.checkInTime = getCurrentTime();
            slot.slotId = slotId;
            parkedVehicles.put(slot.ticket, slot);
            slotsByType.get(slot.vehicleType).remove(slotId);
            System.out.println("Vehicle parked in slot: " + slotId);
        } else {
            System.out.println("No available slot for vehicle type: " + slot.vehicleType);
        }
    }

    @Override
    public void unparkVehicle(String customerId, String ticket) {
        ParkingSlot slot = parkedVehicles.get(ticket);
        if (slot != null && slot.customerId.equals(customerId)) {
            slot.checkOutTime = getCurrentTime();
            parkedVehicles.remove(ticket);
    
            slotsByType.get(slot.vehicleType).add(slot.slotId);
            System.out.println("Vehicle unparked from slot: " + slot.slotId);
            System.out.println("Check-in Time: " + slot.checkInTime);
            System.out.println("Check-out Time: " + slot.checkOutTime);
        } else {
            System.out.println("Invalid ticket or customer ID");
        }
    }

    @Override
    public boolean isSlotAvailable(String vehicleType) {
        return !slotsByType.getOrDefault(vehicleType, new HashSet<>()).isEmpty();
    }

    @Override
    public String getAvailableSlot(String vehicleType) {
        Set<String> availableSlots = slotsByType.getOrDefault(vehicleType, new HashSet<>());
        if (!availableSlots.isEmpty()) {
            return availableSlots.iterator().next();
        }
        return null;
    }

    private String getCurrentTime() {
        return LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
    }
}