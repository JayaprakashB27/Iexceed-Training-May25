 void main(){ 

            Example ex = Example(); 

            ex.disp(); 

        } 

       class Example{ 

            int? age=74; 

            String? name="Gurudev"; 

   

         Example(){ 

            this.age =age; 

            this.name= name; 

         } 

   

         void disp(){ 

              print("Name is ${name} and age is ${age}"); 

         } 

       } 

       