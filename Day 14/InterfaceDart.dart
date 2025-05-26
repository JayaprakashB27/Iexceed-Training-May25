abstract class PersonInfo {
  void name();
  void age();
  void state() {
    print("TamilNadu");
  }
}
class Jayaprakash implements PersonInfo {
  int? _age;
  String? _name;
  Jayaprakash(int age, String name) {
    _age = age;
    _name = name;
  }
  @override
  void name() {
    print("Name is $_name");
  }
  @override
  void age() {
    print("Age is $_age");
  }
  @override
  void state() {
    print("In TamilNadu");
  }
}
void main() {
  Jayaprakash person = Jayaprakash(25, "Jayaprakash Balasubramanian");
  person.name();
  person.age();
  person.state();
}           