class Passengers{
    private String name;
    private int trainNo;
    private String place;

    Passengers(String name , int trainNo , String place){
        this.name = name;
        this.trainNo = trainNo;
        this.place = place;
    }

    public void setName(String name){
        this.name = name;
    }
    public void setTrainNo(int trainNo){
        this.trainNo = trainNo;
    }
    public void setPlace(String place){
        this.place=place;
    }

    public int getTrainNo(){
        return trainNo;
    }
    public String getName(){
        return name;
    }
    public String getPlace(){
        return place;
    }
}

public class demoEncaps {
 public static void main(String[] args) { 
    // using constructors
    Passengers p = new Passengers("Sanjay",87456,"trippur");
    System.out.println("Passanger name :"+p.getName());
    System.out.println("Boarding from :"+p.getPlace());
    System.out.println("Train no :"+p.getTrainNo());

    // using getters And setters
    p.setName("Jp");
    p.setPlace("CBE");
    p.setTrainNo(2546223);
    System.out.println("Passanger name :"+p.getName());
    System.out.println("Boarding from :"+p.getPlace());
    System.out.println("Train no :"+p.getTrainNo());

 }   
}
