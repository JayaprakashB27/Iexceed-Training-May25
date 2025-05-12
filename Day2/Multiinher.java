
interface college1{
    public void disp();
}
   
interface hostel1{
    public void disp();
}
   
   class student implements college1,hostel1{
    @Override
       public void disp(){
                  System.out.println("No error for Multiple inheritence");
        }
   }
   
   public class Multiinher {
       public static void main(String[] args) {
          student x =  new student();
           x.disp();
       }
   }
   