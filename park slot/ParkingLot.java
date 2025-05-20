import java.util.*;

class ParkingLot {
    private String s_lotId;
    private List<Floor> l_floors;

    public ParkingLot(String s_lotId, int i_numberOfFloors, int i_slotsPerFloor) {
        this.s_lotId = s_lotId;
        l_floors = new ArrayList<>();
        for (int i = 1; i <= i_numberOfFloors; i++) {
            l_floors.add(new Floor(i, i_slotsPerFloor));
        }
    }

    public String getLotId() {
        return s_lotId;
    }

    public List<Floor> getFloors() {
        return l_floors;
    }
}