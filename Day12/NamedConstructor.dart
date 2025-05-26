      void main(){ 

             Info x =Info();  

             Info.disp(65,58); 

       } 

       class Info{  

           int? x; 

           int? y; 

           Info(){ 

                 print("Default "); 

           } 

          Info.disp(int a, int b){    // named constructor 

             this.x = a; 

             this.y = b; 

             print(a+b); 

         } 

 