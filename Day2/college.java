class college  {
    String clg_name,dept;
    int pin;
    college(String clg_name,String dept,int pin ){
         this.clg_name =clg_name;
         this.pin =pin;
         this.dept =dept;
    }

    public void dispCollege(){
       System.out.println("college name : "+clg_name);
       System.out.println("pin : "+pin);
       System.out.println("dept : "+dept);
    }
}
