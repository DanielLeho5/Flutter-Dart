void main(List<String> args) {
  final human = Human("Daniel", 12);

  final Human(name:humansName, :age) = human; // destructuring the class properties

  print(humansName);
}

class Human {
  final String name;
  final int age;
  Human(this.name, this.age);
}