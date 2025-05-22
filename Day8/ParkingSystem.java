import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class ParkingSystem {
    private static final Map<String, Set<String>> INITIAL_SLOTS = new HashMap<>();
    private static final Random random = new Random();

    static {
        INITIAL_SLOTS.put("car", new HashSet<>(Arrays.asList("A1","A2","A3","A4")));
        INITIAL_SLOTS.put("bike", new HashSet<>(Arrays.asList("B1","B2","B3","B4")));
        INITIAL_SLOTS.put("auto", new HashSet<>(Arrays.asList("C1","C2","C3","C4")));
        INITIAL_SLOTS.put("bus", new HashSet<>(Arrays.asList("D1","D2","D3","D4")));
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ParkingLot parkingLot = new ParkingLot(INITIAL_SLOTS);

        System.out.print("\n--------------------------Welcome-------------------------");
        while (true) {
            System.out.println("\nChoose an option");
            System.out.println("1. Park Vehicle");
            System.out.println("2. Unpark Vehicle");
            System.out.println("3. Check Availability");
            System.out.println("4. Exit");

            int choice = sc.nextInt();
            sc.nextLine(); 

            switch (choice) {
                case 1:
                    System.out.print("Enter vehicle type (car/bike/auto/bus): ");
                    String vehicleType = sc.nextLine().toLowerCase();

                    if (!INITIAL_SLOTS.containsKey(vehicleType)) {
                        System.out.println("Invalid vehicle type");
                        break;
                    }

                    System.out.print("Enter "+vehicleType+" number: ");
                    String carNumber = sc.nextLine();
                    System.out.print("Enter customer ID: ");
                    String customerId = sc.nextLine();

                    String ticket = generateTicket(4, 6);
                    String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                    ParkingSlot slot = new ParkingSlot(null, vehicleType, carNumber, customerId, date, ticket, null);
                    parkingLot.parkVehicle(slot);
                    System.out.println("Your ticket is : " + ticket);
                    break;

                case 2:
                    System.out.print("Enter customer ID: ");
                    String cId = sc.nextLine();
                    System.out.print("Enter ticket: ");
                    String t = sc.nextLine();
                    parkingLot.unparkVehicle(cId, t);
                    break;

                case 3:
                    for (String vType : INITIAL_SLOTS.keySet()) {
                        System.out.println("Available slots for " + vType + ": " + parkingLot.isSlotAvailable(vType));
                    }
                    break;

                case 4:
                    System.out.println("Exiting...");
                    System.out.println("--------------------------Thank you!-------------------------");

                    sc.close();
                    return;

                default:
                    System.out.println("Invalid choice");
            }
        }
    }

    private static String generateTicket(int minLen, int maxLen) {
        int length = random.nextInt(maxLen - minLen + 1) + minLen;
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        StringBuilder ticket = new StringBuilder();
        for (int i = 0; i < length; i++) {
            ticket.append(chars.charAt(random.nextInt(chars.length())));
        }
        return ticket.toString();
    }
}