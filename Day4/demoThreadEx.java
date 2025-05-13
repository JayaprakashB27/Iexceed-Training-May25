class Thrd extends Thread{
    Thrd(){

    }

    public void run(){
        for(int i=0;i<10;i++){
            System.out.println("thread "+i);
        }
    }

}

public class demoThreadEx {
    public static void main(String[] args) {
        Thrd t =  new Thrd();
      //  t.run();
        t.start();
        for(int i=0;i<7;i++){
            System.out.println("main "+i);
        }
    }
}
