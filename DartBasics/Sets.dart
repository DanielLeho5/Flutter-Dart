void main(List<String> args) {
  // Sets

  final Student someOne = Student("Luis", 2);

  Set<Student> students = {
    Student("Daniel", 5),
    someOne, someOne, someOne // only once
  };

  print(students);
}

class Student {
  final String name;
  final int mark;

  Student(this.name, this.mark);

  @override
  String toString() {
    return "Student: $name";
  }
}