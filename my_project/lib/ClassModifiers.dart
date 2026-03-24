void main(List<String> args) {
  Animal animal = Cat();

  switch (animal) {
    case Dog():
      print("DOG");
    case Cat():
      print("CAT");
    case Human():
      print("HUMAN");
  }
}

sealed class Animal {}
final class SomeClass {}
base class SomeOtherClass {} // cant be implemented, only exteneded, it must be base/final/sealed
interface class ClassX {} // cant be exteneded, only implemented
mixin class MixinClass {}

final class Class1 extends SomeOtherClass {}

class Human implements Animal {}

class Dog implements Animal {}

class Cat extends Animal {}

class Cat1 extends Cat {}