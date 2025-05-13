import java.io.DataInputStream;
import java.io.IOException;
class Thrds {
    Thrds(){
        try {
           DataInputStream dis = new DataInputStream(System.in);
           String a = dis.readLine();
           int b = Integer.parseInt(dis.readLine());
           boolean c = Boolean.parseBoolean(dis.readLine());
           float d = Float.parseFloat(dis.readLine());
           System.out.println(a+" "+b+" "+c+" "+d+" ");
        } 
        catch (IOException e) {
            e.printStackTrace();
        }
        
    }

    // public void run(){
    //     for(int i=0;i<10;i++){
    //         System.out.println("thread "+i);
    //     }
    // }

}

public class demoThreadWrapper {
    public static void main(String[] args) {
        Thrds t =  new Thrds();
    }
}
