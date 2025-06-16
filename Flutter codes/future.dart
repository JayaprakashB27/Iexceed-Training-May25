void main(){
  print(FutureMethod().then((value){
    print("hello ...................");
  }));
}

Future FutureMethod(){
  return Future.delayed(Duration(seconds: 10));
}