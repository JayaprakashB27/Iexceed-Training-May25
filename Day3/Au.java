public class Au {
   private String name = "Jp";
   // String college;

   Au() {
       System.out.println("outer class.. " + name);
   }

   class Bu {
      String college;
       
      Bu(String college) {
           this.college = college;
           System.out.println("Inner class..");
      }

       public void display() {
           System.out.println("name : " + name);
           System.out.println("college : " + college);
       }
   }
}

class demonested {
   public static void main(String[] args) {
       Au x = new Au();
       Au.Bu y = x.new Bu("SIET");
       y.display();
   }
}

