 void main(){ 

          normalFunction(674,47); 

          arrowFunction(37,84); 

          annonymousFunction(486,96); 

          print(higherOrderFunction(newFunction,"jayaprakash"));  

      } 

       

     void normalFunction(int a , int b){ 

         print("${a} + ${b} = ${a+b}"); 

      } 

       

      var arrowFunction = (int a, int b) => print("${a} + ${b} = ${a+b}"); 

 

      var annonymousFunction = (int a , int b){ 

         print("${a} + ${b} = ${a+b}"); 

      }; 

 

     String newFunction(){ 

         return "Upper case : "; 

      }    

     String higherOrderFunction( Function newFunction , String s){ 

           return newFunction()+""+s.toUpperCase(); 

     } 