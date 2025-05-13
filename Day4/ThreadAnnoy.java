
public class ThreadAnnoy {
   public static void main(String[] args) throws InterruptedException {
    new Thread(){
      public void run(){
        for(int i=0;i<9;i++){
            System.out.println(i+" ");
        }
      }
    }.start();
   } 
}
