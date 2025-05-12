package demoPackages;
import demoPackages.deflt2;
class A extends deflt{
    String name,gender;
    int age;
    A(String name,String gender,int age,String designation){
        super(designation);
        this.age=age;
        this.name=name;
        this.gender=gender;
    }
   
    
    }
    public class deflt {
     public static void main(String[] args) {
        A x = new A("lavi", "female", 21,"Trainee");
        x.dispStu();
        x.deflt2Disp();
 }
}

