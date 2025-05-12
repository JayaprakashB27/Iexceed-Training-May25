 class student {
   String name,st,city;
   int pt;
   student(String name,String st,String city,int pt){
    this.name=name;
    this.st=st;
    this.city=city;
    this.pt=pt;
   }
   public void displayStudent(){
    System.out.println("------------------------------------------------------");
    System.out.print("Name : "+name+" ");
    System.out.print("Street name  : "+st+" ");
    System.out.print("City : "+city+" ");
    System.out.println("plot num : "+pt);
   }

}
