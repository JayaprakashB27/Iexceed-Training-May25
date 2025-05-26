abstract class Bird {
  void chirp();
}

mixin CanFly on Bird {
  void fly() {
    print("Flying high!");
  }
}

class Sparrow extends Bird with CanFly {
  @override
  void chirp() {
    print("Chirp chirp!");
  }
}

class Penguin extends Bird {
  @override
  void chirp() {
    print("Chirp chirp!");
  }
}

void main() {
  Sparrow sparrow = Sparrow();
  sparrow.chirp();
  sparrow.fly();

  Penguin penguin = Penguin();
  penguin.chirp();
}