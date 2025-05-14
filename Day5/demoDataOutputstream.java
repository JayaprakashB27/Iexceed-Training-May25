import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class demoDataOutputstream {
    public static void main(String[] args) throws IOException {
        DataOutputStream dos = new DataOutputStream(new FileOutputStream("xyz.txt"));
        dos.writeInt(54);
        dos.writeChar('J');
        dos.writeBoolean(false);
        dos.writeDouble(54.2);

        DataInputStream dis = new DataInputStream(new FileInputStream("xyz.txt"));
        System.out.println(dis.readInt());
        System.out.println(dis.readBoolean());
        System.out.println(dis.readDouble());
        System.out.println(dis.readChar());


    }
}
