class college54{
 public void disp() {
    
 }
}
class hostel54{
  void disp(){
  }
}
 class student54{
 // class student54 extends college54,hostel54{      // error line
    void disp(){
        System.out.println("error");
    }
}
public class demoMulinher {
    public static void main(String[] args) {
        new student54().disp();
    }
}
