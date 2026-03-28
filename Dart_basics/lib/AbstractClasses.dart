void main(List<String> args) {
  Car car = Car();

  car.propertyFromOtherClass; // extension gives access to all the methods and properties of the parent class
  car.methodFromOtherClass();

  car.isLightOn; // while implements makes sure you override everything from the class it implements
}

class Vehicle {
  int speed = 10;
  bool isEngineWorking = false;
  bool isLightOn = false;

  void accelerate() {
    speed += 10;
  }

  void stop() {
    speed = 0;
  }
}

abstract class OtherClass { // abstract class -> used for implementation
  dynamic propertyFromOtherClass = "";

  void methodFromOtherClass();
}

// implements -> the parent class is implicitly abstract class
// everything must be defined again
class Bike implements Vehicle { // must override all
  @override
  int speed = 15;

  @override
  bool isEngineWorking = false;

  @override
  bool isLightOn = true;

  @override
  void accelerate() {
    speed++;
  }

  @override
  void stop() {
    print("Bike has stopped");
  }
}

class Car extends OtherClass implements Vehicle {
  @override
  int speed = 15;

  @override
  bool isEngineWorking = false;

  @override
  bool isLightOn = true;

  @override
  void accelerate() {
    speed+=5;
  }

  @override
  void stop() {
    print("Car has stopped");
  }

  void methodFromOtherClass() {
    print("Implementation of method from abstract class");
  }
}