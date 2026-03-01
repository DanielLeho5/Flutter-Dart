void main(List<String> args) {

  Car car = Car();
  print("The speed of the ${car.runtimeType} is ${car.speed}!");
  print("The lights of the ${car.runtimeType} are ${car.isLightOn ? "on" : "off"}!");
  
  Vehicle car2 = Car();
  print("The ${car2.runtimeType} has ${(car2 as Car).wheelCount} wheels!");

  dynamic age = 10;
  print((age as int).isOdd);

  SuperCar supercar = SuperCar();
  print(supercar.speed);
  supercar.accelerate();
}

class Vehicle {
  int speed = 10;
  bool isEngineWorking = false;
  bool isLightOn = false;

  void accelerate() {
    speed += 10;
  }
}

// car is-a vehicle, so it inherits all it's properties and methods plus it has some of it's own
class Car extends Vehicle { // can only extend a single class
  int wheelCount = 4;

  void stop() {
    speed -= 10;
  }
}

class SuperCar extends Car { // but chained inheritance is allowed, it has access to all thing above it
  int rating = 10;
  int speed = 1000;
}