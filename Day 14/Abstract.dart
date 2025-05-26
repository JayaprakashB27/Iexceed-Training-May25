abstract class MyInfo {
  void name();
  void age();
  void city();
}

class Jayaprakash extends MyInfo {
  int? _age;
  String? _name;
  String? _city;

  Jayaprakash(int age, String name, String city) {
    _age = age;
    _name = name;
	_city = city;
  }

  @override
  void name() {
    print("Name is $_name");
  }

  @override
  void age() => print("Age is $_age");
 
  @override
  void city() {
      print("City : ${_city}");	  
  }
  
}

class Giri extends MyInfo {
  int? _age;
  String? _name;
  String? _city;

  Giri(int age, String name,String city) {
    _age = age;
    _name = name;
	_city = city;
  }

  @override
  void name() {
    print("Name is $_name");
  }

  @override
  void age() => print("Age is $_age");
	
  @override
  void city() {
      print("City : ${_city}");	  
  }
}

void main() {
  Jayaprakash jp = Jayaprakash(25, "Jayaprakash Balasubramanian","Coimbatore");
  jp.name();
  jp.age();
  jp.city();

  Giri g = Giri(45, "Girija","Pollachi");
  g.name();
  g.age();
  g.city();
}