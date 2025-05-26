 void main() { 

       greet(name: "Alice", age: 30); 

       greet(name: "Bob"); // age is omitted 

     } 

     void greet({String? name, int? age}) { 

        print("Hello, $name! You are ${age ?? 'unknown'} years old."); 

     } 