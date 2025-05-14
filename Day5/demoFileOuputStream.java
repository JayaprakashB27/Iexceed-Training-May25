import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class demoFileOuputStream {
    public static void main(String[] args) throws IOException {
        FileOutputStream fos  = new FileOutputStream("sam.txt");
        String str = "this example is for fileoutputstream.";
        byte w[] = str.getBytes();
        fos.write(w);
        fos.close();


        FileInputStream fis = new FileInputStream("sam.txt");
        System.out.println((char)fis.read());
        System.out.println((char)fis.read());
    }
}
