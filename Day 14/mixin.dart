mixin MixinClass1{
   void print1(){
	   print("Mixin class 1");
   }
	
}

mixin MixinClass2{
	  void print2(){
	     print("Mixin class 2");
      }
	
}

class Derived with MixinClass1, MixinClass2 {
	  void print3(){
	    print("Mixin Derived class ");
      } 
}


void main(){

	Derived d1  =Derived();
    d1.print1();
	d1.print2();
	d1.print3();
	
	
}