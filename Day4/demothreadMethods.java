class Exthe extends Thread{
    Thread t = new Thread(this);
    Exthe(){
        t.setName("jp thread");
        System.out.println(t.getName());
        System.out.println(t.getPriority());
    }


}

public class demothreadMethods {
    public static void main(String[] args) {
        new Exthe();
        Thread t = Thread.currentThread();
        t.setName("Main thread");
        System.out.println(t.getName());
        System.out.println(t.getPriority());
    }
}
