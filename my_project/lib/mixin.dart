void main(List<String> args) {
  // mixin
  // mix in -> no parent-child relation
  // so animal is not jump, but it uses all properties and methods of Jump

  final Animal animal = Animal();
  animal.printJumpHeight();

  final Cat cat = Cat();
  //cat.printScreamVolume(); // cat doesnt have access
}

mixin Jump {
  int jumping = 10;
}

mixin Scream on Animal {
  int loudness = 10;
}

class Animal with Jump {
  void printJumpHeight() {
    print(jumping);
  }
}

// can make "mixin class ... {}"

class Cat extends Animal {
  void jump() {
    print(jumping); // child class of a class that uses mixin still has access to it
  }
}
class Dog extends Animal with Scream {
  void jump() {
    print(jumping); // child class of a class that uses mixin still has access to it
  }

  void scream() {
    print(loudness);
  }
}