class A{
     A(){
        System.out.println("A class");
     }

     public void display(){
        System.out.println("A method");
     }

     public void display(String x){
        System.out.println("A method by parameterized");
     }
}

class B extends A{
    B(){
        System.out.println("B class");
     }

     public void display(){
        System.out.println("B method");
     }
}

public class overload {
  public static void main(String[] args) {
     A a = new A();
     a.display();
     a.display("Java");
      
     B b = new B();
     b.display();
     b.display("Java");

  } 
}
