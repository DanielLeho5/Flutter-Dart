void main(List<String> args) {
  final Student student = Student<String>("Daniel");
}

class Student <T> {
  final T name;

  Student(this.name);
}