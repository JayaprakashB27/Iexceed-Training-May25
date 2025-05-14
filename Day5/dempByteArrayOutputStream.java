import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class dempByteArrayOutputStream {
    public static void main(String[] args) throws IOException {
        FileOutputStream fos1 = new FileOutputStream("one.txt");
        FileOutputStream fos2  = new FileOutputStream("two.txt");
        
        ByteArrayOutputStream baos  = new ByteArrayOutputStream();
        // baos.write(5);
        // baos.writeTo(fos2);
        // baos.writeTo(fos1); 
        // baos.flush();
        // baos.close();
        
        String str = "this is a example of ByteArrayOutputStream";
        byte[] byt = str.getBytes();
        baos.write(byt);
        baos.writeTo(fos1);
        baos.writeTo(fos2);
        baos.flush();
        baos.close();

    }
    
}
