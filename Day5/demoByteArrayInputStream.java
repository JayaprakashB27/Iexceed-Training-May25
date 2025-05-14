import java.io.ByteArrayInputStream;

public class demoByteArrayInputStream {
    public static void main(String[] args) {
        byte arr[] = {43,76,87,73,84,99,69,53};
        ByteArrayInputStream bais = new ByteArrayInputStream(arr);
        for(int i=0;i<arr.length;i++){
            System.out.println((char)bais.read());
        }
        System.out.println(bais.available());
    }
}
