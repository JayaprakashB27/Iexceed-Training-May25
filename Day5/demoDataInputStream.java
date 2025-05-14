import java.io.DataInputStream;
import java.io.IOException;

class Ex {
    Ex(){
        DataInputStream dis = new DataInputStream(System.in);
        try{
           int a = Integer.valueOf(dis.readLine());
           int b = Integer.parseInt(dis.readLine());
           System.out.println(a+b);
        }
        catch(Exception e){}
    }
}

public class demoDataInputStream {
 public static void main(String[] args) {
      Ex x = new Ex();
 }   
}
