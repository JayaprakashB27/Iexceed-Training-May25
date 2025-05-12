interface Application{
    public void information();
}

 class DemoFunctinalInter  implements Application{

    @Override
    public void information(){
       System.out.println("functional interface.....");
   }

    public static void main(String[] args) {
        DemoFunctinalInter ap = new DemoFunctinalInter();
        ap.information();

        new DemoFunctinalInter(){
            @Override
            public void information(){
               System.out.println("functional interface with lambda function");
           }
        }.information();
}
        
   
 }
