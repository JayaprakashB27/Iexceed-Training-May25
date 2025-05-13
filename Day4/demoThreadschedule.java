class Schedule extends Thread{
    Schedule(){

    }
 
    Thread t = new Thread();
    public void run(){
        try {
            for(int i=0;i<9;i++){
                System.out.println("i : "+i);
                Thread.sleep(550); // t.sleep(50);
            } 
        }
            catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
public class demoThreadschedule {
   public static void main(String[] args) throws InterruptedException {
        Schedule s1 = new Schedule();
        Schedule s2 = new Schedule();
        Schedule s3 = new Schedule();

        s1.start();
        s1.join();
        s2.start();
        s2.join();
        s3.start();
    }
}
