class Ticket {
    private String s_ticketId;
    private Vehicle o_vehicle;
    private int i_floor;
    private int i_slot;

    public Ticket(String s_ticketId, Vehicle o_vehicle, int i_floor, int i_slot) {
        this.s_ticketId = s_ticketId;
        this.o_vehicle = o_vehicle;
        this.i_floor = i_floor;
        this.i_slot = i_slot;
    }

    public String getTicketId() {
        return s_ticketId;
    }

    public int getFloor() {
        return i_floor;
    }

    public int getSlot() {
        return i_slot;
    }

    public Vehicle getVehicle() {
        return o_vehicle;
    }

    public void print() {
        System.out.println("Ticket ID: " + s_ticketId);
        System.out.println("Vehicle: " + o_vehicle.getType() + " - " + o_vehicle.getRegistrationNumber() + ", Color: " + o_vehicle.getColor());
        System.out.println("Parked at Floor: " + i_floor + ", Slot: " + i_slot);
    }
}