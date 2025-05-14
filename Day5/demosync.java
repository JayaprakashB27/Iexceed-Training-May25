class callm{
    public void call(String msg){
	   System.out.print("[");
	   System.out.print(msg);
	   System.out.print("]");
	   this.display();
	}
     public void display(){
	  for(int i=1;i<9;i++){
		  System.out.print(i);
		}
        System.out.println(u);
	}
}
class calle extends Thread{
   Thread t=new Thread(this);
   callm targ;
   String msg;
     calle(callm targ,String msg)	{
	  this.msg=msg;
	  this.targ=targ;
	  t.start();
	}
     @Override
     public void run(){
	  synchronized(targ){
	  	targ.call(msg);
		}
	}
}
class demosync{
    public static void main(String asd[]) throws Exception{
	   callm c=new callm();
	   calle obj1=new calle(c,"welcome");
	   calle obj2=new calle(c,"to");
	   calle obj3=new calle(c,"iexceed");
	}
}
 