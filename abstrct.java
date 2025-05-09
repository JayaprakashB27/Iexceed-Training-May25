abstract class Abs{
    abstract void disp();
    abstract void add();
    abstract void sub();
}
class Bbs extends Abs{
    void disp(){
        System.out.println("hellooooo");
    }
    void add(){
        System.out.println("add");
    }
    void sub(){
        System.out.println("sub");
    }
}
public class abstrct {
    public static void main(String[] args) {    
        new Bbs().disp();
        new Bbs().add();

    }
}
