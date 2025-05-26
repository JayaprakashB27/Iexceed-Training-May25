  void main(){ 

            var res = func1(); 

            res(); 

   

            var res2 = func11(); 

            print(res2()); 

       } 

  

      Function func1(){ 

           void func2(){ 

                print("this function is returning  to another function... func2"); 

           } 

        return func2; 

      } 

  

     Function func11(){ 

          String func22(){  

               return "this function is returning to another function... func22"; 

          } 

      return func22; 

    } 