class Slot {
    private int i_slotNumber;
    private String s_type;
    private Vehicle o_vehicle;

    public Slot(int i_slotNumber, String s_type) {
        this.i_slotNumber = i_slotNumber;
        this.s_type = s_type.toLowerCase();
    }

    public boolean isAvailable() {
        return o_vehicle == null;
    }

    public void assignVehicle(Vehicle o_vehicle) {
        this.o_vehicle = o_vehicle;
    }

    public void removeVehicle() {
        this.o_vehicle = null;
    }

    public String getType() {
        return s_type;
    }

    public int getSlotNumber() {
        return i_slotNumber;
    }

    public Vehicle getVehicle() {
        return o_vehicle;
    }
}