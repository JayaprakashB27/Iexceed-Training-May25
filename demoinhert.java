class inher1 {
  String name;
  int age;

  inher1(String name, int age) {
      this.name = name;
      this.age = age;
  }

  void disp() {
      System.out.println("Inher1 is called by " + name + " age is " + age);
  }
}

class inher2 extends inher1 { // inher2 extends inher1
  String city;

  inher2(String name, int age, String city) {
      super(name, age); // Call the constructor of inher1
      this.city = city;
  }

  public void disp() {
      super.disp(); // Call the disp method of inher1
      System.out.println("City: " + city);
  }
}

class demoinhert {
  public static void main(String[] args) {
      new inher1("jack", 67).disp();
      inher2 i2 = new inher2("jp", 21, "cbe");
      i2.disp();
  }
}
