class Constru{
   String name;
   String city;

   Constru(){
    System.out.println("hgwiygwgiegwe");
   } 
   
    Constru(String name,String city){
        this.name = name;
        this.city = city;
        System.out.println("Parameterized constructor....");
    }
}

public class cons2s {
    public static void main(String[] args) {
        Constru x = new Constru();
        Constru y = new Constru("jp","madurai");

    }
}
