class simple{
 simple(){
  System.out.println("Constructor2 created ");
 }
  simple(String s){
  System.out.println("Constructor created "+s);
 }
	public void method1(){
		System.out.println("Method1 calling");
	}
    
}

class Sample{
 public static void main(String[] args){
   simple x = new simple();
   new simple("by jp");
   x.method1();
  }
}