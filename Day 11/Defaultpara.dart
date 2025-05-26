      void main() { 

        greet("Alice"); 

        greet("Bob", 40); 

     } 

     void greet(String name, [int age = 25]) { 

        print("Hello, $name! You are $age years old."); 

     } 

  