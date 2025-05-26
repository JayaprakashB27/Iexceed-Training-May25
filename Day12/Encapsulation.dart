void main(){ 

       Student a1  = Student(); 

       a1.setName("Jayaprakash"); 

       a1.setDept("IT"); 

       a1.setRank(3); 

       //   print(a1.getName()); 

       //   print(a1.getRank()); 

       //   print(a1.getDept()); 

        print(a1.getName); 

        print(a1.getRank); 

        print(a1.getDept); 

    } 

    class Student{ 

        String _stuName=""; // private var represented by _. 

        int _rank=0; 

        String _stuDept=""; 

        void setName(String name){ 

              this._stuName = name; 

        } 

       void setRank(int rank){ 

            this._rank = rank; 

       } 

      void setDept(String dept){ 

          this._stuDept = dept; 

     } 

   

      //  String getName(){ 

      //      return _stuName; 

      //   }    

     //  String getDept(){ 

     //      return _stuDept; 

    //  } 

    //  int getRank(){ 

    //    return _rank; 

    //  } 

   

      String get getName{ 

         return _stuName; 

      } 

     String get getDept{ 

        return _stuDept; 

     } 

    int get getRank{ 

       return _rank; 

     } 

  } 