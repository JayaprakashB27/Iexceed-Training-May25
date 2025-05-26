void main(){ 

//   College c1 = College(); 

// Department dpt = Department("SIET",2727,"CBE"); 

  Student s1 = Student("Sri Shakthi","CBE",2727,"Information Technology",65); 

  s1.dispStudent(); 

  

} 

  

class College{ 

  String? clg_name; 

  String? dist; 

  int? couns_no; 

  College(String clg_name,int couns_no, String dist){ 

    this.clg_name = clg_name; 

    this.dist = dist; 

    this.couns_no = couns_no; 

    print("${clg_name} ${couns_no} ${dist}"); 

  } 

} 

  

class Department extends College{ 

  String? dept; 

  int? count; 

   Department(String clg_name,String dist, int couns_no ,String dept, int count):super(clg_name,couns_no,dist){ 

      this.dept = dept; 

      this.count = count; 

   } 

} 

  

class Student extends Department{ 

   

   Student(String clg_name,String dist, int couns_no ,String dept, int count):super(clg_name,dist,couns_no,dept,count); 

  

     void dispStudent(){ 

      print("Clg name : ${clg_name}"); 

      print("District: ${dist}"); 

      print("Counselling Number : ${couns_no}"); 

      print("Department Name : ${dept}"); 

      print("Department student count : ${count}"); 

        

     } 

} 

             