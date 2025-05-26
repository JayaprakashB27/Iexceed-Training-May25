   

       void main() { 

            Student s1 = Student("jp", 21, "cbe"); 

            Student s2 = Student("sp", 65, "london"); 

           s1.disp(); 

           s2.disp(); 

   

          // Call the extension method on the student instances 

          s1.extenDisp(); 

          s2.extenDisp();   

      } 

  

   class Student { 

         String? name; 

         int? age; 

         String? city; 

       Student(String name, int age, String city) { 

          this.name = name; 

          this.age = age; 

          this.city = city; 

       } 

      void disp() { 

         print("${name} ${age} ${city}"); 

      } 

    } 

     // Define the extension outside the class 

     extension extenExample on Student { 

        void extenDisp() { 

           print("${this.name}"); 

       } 

    } 

 