    void main() { 

        greet("Alice", 30); 

        greet("Bob"); // age will default to 25 

     } 

     void greet(String name, [int age = 25]) { 

        print("Hello, $name! You are $age years old."); 

     } 