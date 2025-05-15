class Atm{
   int amt=1000;
   synchronized public void withDraw(int amount){
	  System.out.println("Going to withdraw");
	  if(this.amt<amount){
		   System.out.println("less balance");
			try{
		   		wait();
			  }
              catch(InterruptedException d){}
		}
		this.amt-=amount;
	    System.out.println("Withdrawed Successfully!! from your account xxxxxxxxx342 debited Rs "+amount+"Your balance amout : "+this.amt);
   }

   synchronized  public void deposite(int amount){
	   System.out.println("Going to Deposite");
	   this.amt+=amount;
	   System.out.println("Deposited Rs"+amount+" to your account xxxxxxxxx342");
       System.out.println("Your balance is : "+this.amt);
	   notify();
	}
}
 
class demoInterthreadComm{
    public static void  main(String das[]){
		Atm c=new Atm();
        System.out.println("-----------------------------------------------------------------");
		new Thread(){	
	   	   public void run(){
			 c.withDraw(200);
		     }
		}.start();
        System.out.println("-----------------------------------------------------------------");
		new Thread(){
	      public void run(){
			  c.deposite(1000);
			}	
		}.start();
        
        new Thread(){	
            public void run(){
           c.withDraw(200);
           }
      }.start();
    }
}