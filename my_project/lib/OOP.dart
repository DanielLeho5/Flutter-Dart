void main(List<String> args) {
  // OOP

  // Polimorfism

  Animal cat = Cat();
  cat.sound();
  cat = Dog();
  cat.sound();

  // Abstraction

  Car car = Car();
  car.go();
  //Vehicle cehicle = Vehicle(); -> error, abstract classes cant be instanciated

  // Inheritance

  // Encapsulation
    // hiding methods and properties from the outside
  
}

class Person {
  String _name = "";
  // private variable
}

abstract class Vehicle {
  void go();
}

class Car implements Vehicle {
  @override
  void go() {
    print("Car going");
  }
}

class Animal {
  void sound() {
    print("Animal making sound");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat making sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog making sound");
  }
}