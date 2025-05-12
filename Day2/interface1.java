interface school{
    String sclName="Kadri Mills HSSC";
    int year=1933;
    public void info();
    public int Infor();

}
class student20 implements school{
   @Override
    public void info(){
     //   sclName="GHSS";  it will be act as final so we cant change here anything directly .
        System.out.println("school name :"+sclName+"\nyear :"+year);
    }

    public int Infor(){
        // System.out.println("Established year is : "+year);
        return year;
    }
}

public class interface1 {
 public static void main(String[] args) {
    student20 s=  new student20();
    s.info();
    System.out.println(s.Infor());
    //s.Infor();
 }
    
}
