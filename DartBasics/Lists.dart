import 'Generics.dart';

void main(List<String> args) {
  // Lists - ordered collectino of items

  List list = [10, 20, 30, 'Hello', false];

  print(list);
  print(list[0]);

  // list of integers
  List<int> marks = [4, 5, 4, 3]; // <int> -> only integers in the list
  print(marks);

  // list of own objects
  final Student someOne = Student("Luis", 2);
  List<Student> students = [
    Student("Daniel", 5), Student("Peter", 4), Student("Samuel", 3), someOne
  ];

  if (students[0] is Student) {
    print("They are a student!");
  }

  // list operations
  students[1] = Student("NewKid", 4); // replace
  students.add(Student("Laura", 5)); // add
  students.insert(2, Student("Michael", 1)); // insert
  students.remove(someOne);
  
  print(students);

  // filtering
  List<Student> greatStudents = [];

  // with for-in-loop
  for (final student in students) {
    if (student.mark == 5) {
      greatStudents.add(student);
    }
  }
  print(greatStudents);

  // with .where().toList()
  List<Student> notFailing = students.where((final student) => student.mark > 1).toList();
  print(notFailing);

  print(students.length);
  print(students.reversed.toList());
  print(students.first);
  students.firstOrNull;
  students.isEmpty;
  students.iterator;
  students.last;
  students.lastOrNull;
  students.addAll([Student("Someone", 4)]);
  students.asMap();
  students.clear();
  students.add(someOne);
  print(students.contains(someOne));
  print(students.indexOf(someOne));
  print(students.firstWhere((final student) => student.mark == 1));
  print(students.lastWhere((final student) => student.mark == 1));
  students.removeAt(2);
  students.removeLast();
  students.toSet();
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