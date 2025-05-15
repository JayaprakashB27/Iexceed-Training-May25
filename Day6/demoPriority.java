class cv extends Thread{
    
    public void run(){
        for(int i=0;i<9;i++){
            System.out.println("run method : "+i);
        }
    }
}
public class demoPriority{
    public static void main(String[] args) {
        Thread t = new Thread(new cv());
        Thread.currentThread().setPriority(Thread.MAX_PRIORITY);
        Thread.currentThread().setPriority(Thread.MIN_PRIORITY);
        //Thread.currentThread().setPriority(Thread.MIN_PRIORITY+5);
        t.start();
        System.out.println("priority thread is : "+Thread.currentThread().getPriority());
    }
}
