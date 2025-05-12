class Cons1{
    String name;
    int age;
    
    Cons1(String name,int age){
        this.name = name;
        this.age = age;
        System.out.println("name : "+name +" age : "+age);
    }
    void disp(){
        System.out.println("name : "+name);
        System.out.println("age  : "+age);
        System.out.println("name : "+name +" age : "+age);
    }
}
public class deomcons1 {
    public static void main(String[] args) {
        Cons1 x =  new Cons1("JP", 21);
        x.disp();
    }
}
