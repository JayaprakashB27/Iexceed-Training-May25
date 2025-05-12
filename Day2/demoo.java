class inher11 {
  String name;
  int age;

  // Constructor for inher11
  inher11(String name, int age) {
      this.name = name;
      this.age = age;
  }

  // Method to display information
  void disp() {
      System.out.println("Inher1 is called by " + name + ", age is " + age);
  }
}

class inher22 extends inher11 {
  String city;

  // Constructor for inher22 that takes only city
  inher22(String city) {
      // Call the superclass constructor with default values for name and age
      super("Default Name", 0); // You can change "Default Name" and 0 to whatever default values you want
      this.city = city;
  }

  // Overriding the disp method
  @Override
  public void disp() {
      System.out.println("Name: " + name);
      System.out.println("Age: " + age);
      System.out.println("City: " + city);
  }
}

public class demoo {
  public static void main(String[] args) {
      // Creating an object of inher11
      inher11 i1 = new inher11("Jack", 67);
      i1.disp();

      // Creating an object of inher22 with only city
      inher22 i2 = new inher22("CBE");
      i2.disp();
  }
}
