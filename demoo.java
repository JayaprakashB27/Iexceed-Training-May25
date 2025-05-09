class inher11{
    String name;
    int age;
  
    inher11(String name, int age){
      this.name = name;
      this.age =age;
    }
    void disp(){
      System.out.println("Inher1 is called by "+name+" age is "+age);
    }
    
  }
  class inher22 extends inher11{ 
      String city;
    m inher22(String city){
              super.disp();
               this.city = city;
      }
  
      public void disp(){
           System.out.println("Name: "+name);
          System.out.println("Age: "+age);
          System.out.println("city: "+city);
      }
  
  }

  public class demoo {
      public static void main(String[] args) {
         inher11 i1 = new inher11("jack",67);
         i1.disp();
         inher22 i2 = new inher22("cbe"); 
         i2.disp();
      }

    
}
