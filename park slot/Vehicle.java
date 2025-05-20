public class Vehicle {
    private String s_registrationNumber;
    private String s_color;
    private String s_type;

    public Vehicle(String s_registrationNumber, String s_color, String s_type) {
        this.s_registrationNumber = s_registrationNumber;
        this.s_color = s_color;
        this.s_type = s_type.toLowerCase();
    }

    public String getType() {
        return s_type;
    }

    public String getRegistrationNumber() {
        return s_registrationNumber;
    }

    public String getColor() {
        return s_color;
    }
}