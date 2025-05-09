class phone{
  public void call(){
    System.out.println("phone called...");
  }
}
class apple extends phone{
  @Override
  public void call(){
    System.out.println("apple called...");
  }

  public void touch(){
    System.out.println("apple touch..");
  }
}
public class democasting {
 public static void main(String[] args) {
    phone x = new phone();
    apple y = new apple();
    x.call();
    y.call();
    // UpCasting 
    phone p = new apple();
    p.call(); // apple called
    
 }   
}
