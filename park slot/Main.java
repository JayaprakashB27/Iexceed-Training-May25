import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner o_sc = new Scanner(System.in);
        System.out.print("Enter Parking Lot ID: ");
        String s_lotId = o_sc.nextLine();
        System.out.print("Enter Number of Floors: ");
        int i_floors = o_sc.nextInt();
        System.out.print("Enter Slots per Floor: ");
        int i_slots = o_sc.nextInt();
        o_sc.nextLine();

        ParkingLot o_parkingLot = new ParkingLot(s_lotId, i_floors, i_slots);
      //  ParkingManager o_manager = new ParkingManager(o_parkingLot);

        while (true) {
            System.out.println("\n1. Park Vehicle\n2. Unpark Vehicle\n3. Display Available Slots\n4. Display Occupied Slots\n5. Exit");
            int i_choice = o_sc.nextInt();
            o_sc.nextLine();
            switch (i_choice) {
                case 1 -> {
                    System.out.print("Enter Vehicle Type (Car/Bike/Truck): ");
                    String s_type = o_sc.nextLine().trim().toLowerCase();
                    if (!s_type.equals("car") && !s_type.equals("bike") && !s_type.equals("truck")) {
                        System.out.println("Invalid vehicle type.");
                        continue;
                    }
                    System.out.print("Enter Registration Number: ");
                    String s_reg = o_sc.nextLine();
                    System.out.print("Enter Color: ");
                    String s_color = o_sc.nextLine();
                    Vehicle o_vehicle = new Vehicle(s_reg, s_color, s_type);
                    // Ticket o_ticket = o_manager.parkVehicle(o_vehicle);
                    // if (o_ticket != null) o_ticket.print();
                }
                case 2 -> {
                    System.out.print("Enter Ticket ID: ");
                    String s_ticketId = o_sc.nextLine();
                 //   o_manager.unparkVehicle(s_ticketId);
                }
                case 3 -> {
                    System.out.print("Enter Vehicle Type: ");
                    String s_type = o_sc.nextLine().trim().toLowerCase();
                  //  o_manager.displayAvailableSlots(s_type);
                }
                case 4 -> {
                    System.out.print("Enter Vehicle Type: ");
                    String s_type = o_sc.nextLine().trim().toLowerCase();
                 //   o_manager.displayOccupiedSlots(s_type);
                }
                case 5 -> {
                    System.out.println("Exiting System...");
                    return;
                }
                default -> System.out.println("Invalid Choice");
            }
        }
    }
}