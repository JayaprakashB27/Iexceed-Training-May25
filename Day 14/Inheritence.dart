class Office{
	String? name;
	Office(String name){
		this.name = name;
	}
	void OfcName(){
		print("Office name : ${name}");
     }
}

class Employee extends Office{
 String? empname;
 int? exp;	
	
  Employee(String empname, int exp,String name):super(name){
	this.empname = empname;
	this.exp = exp;
  }	
	void EmpDetails(){
	     print("Employee name : ${empname}");
	     print("Employee Experience : $exp");
	}
}
void main(){
	 Office ofc = Office("I-Exceed");
	 ofc.OfcName();
	
	Employee emp1 = Employee("Jayaprakash",1,"I-exceed");
	emp1.EmpDetails();
	
}