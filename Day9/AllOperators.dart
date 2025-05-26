     void main() { 

       int a = 3450; 

       int b = 1214; 

  print("${a} + ${b} is = ${a+b}"); 

  print("${a} - ${b} is = ${a-b}"); 

  print("${a} * ${b} is = ${a*b}"); 

  print("${a} / ${b} is = ${a/b}"); 

  print("${a} % ${b} is = ${a%b}"); 

  print("${a} ~/ ${b} is = ${a~/b}"); 

   

  print(a<b); 

  print(a>b); 

  print(a<=b); 

  print(a>=b); 

  print(a==b); 

  print(a!=b); 

   

  print((a<b)&&(a>b)); 

  print((a<b)||(a>b)); 

  print((a>b)&&(a<b)); 

  print((a>b)||(a<b)); 

  print((a>=b)&&(a!=b)); 

  print((a>=b)||(a!=b)); 

   

//     int a =87; 

//     int b = a++; 

  print("${a}  ${b}");  // 88 87 

  a++; 

    print("${a}  ${b}"); // 89 87 

  --b; 

    print("${a}  ${b}"); // 89 86 

  a++;  

    print("${a}  ${b}"); // 90 86 

  a--; 

    print("${a}  ${b}"); // 89 86 

     

  int x =854; 

  int y = 324; 

  print((x>y)?"true":"false");   

  

} 