class inaggre {
    String name;
    int age;
    student stu;
    college col;

    inaggre(String name,int age, student stu ,college col){
        this.name= name;
        this.age = age;
        this.stu = stu;
        this.col = col;
    }
    
    public void dispInfo(){
        stu.displayStudent();
        col.dispCollege();
    }
}


public class Compositon {
    public static void main(String[] args) {
        student st = new student("jp", "babyschool","cbe",230);

        college cl = new college("SIET", "IT", 2727);

        inaggre ia =  new inaggre("jp",21,st,cl);
        ia.dispInfo();

    }
}
