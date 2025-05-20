import java.util.*;

class Floor {
    private int i_floorNumber;
    private List<Slot> l_slots;

    public Floor(int i_floorNumber, int i_slotsPerFloor) {
        this.i_floorNumber = i_floorNumber;
        l_slots = new ArrayList<>();

        for (int i = 1; i <= i_slotsPerFloor; i++) {
            String s_type;
            if (i == 1) s_type = "truck";
            else if (i == 2 || i == 3) s_type = "bike";
            else s_type = "car";
            l_slots.add(new Slot(i, s_type));
        }
    }

    public int getFloorNumber() {
        return i_floorNumber;
    }

    public List<Slot> getSlots() {
        return l_slots;
    }

    public Slot getAvailableSlot(String s_type) {
        for (Slot o_slot : l_slots) {
            if (o_slot.getType().equalsIgnoreCase(s_type) && o_slot.isAvailable()) {
                return o_slot;
            }
        }
        return null;
    }
}