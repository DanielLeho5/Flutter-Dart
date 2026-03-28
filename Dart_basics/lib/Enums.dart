void main(List<String> args) {
  // Enums

  final eployee1 = Employee("Daniel", EmployeeType.swe);
  final eployee2 = Employee("Geezer", EmployeeType.finance);
}

class Employee {
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  void printEmployeeeType() {
    switch (type) {
      case EmployeeType.swe:
        print("Software Engineer");
      case EmployeeType.finance:
        print("Finance");
      default:
        print("Marketing");
    }
  }
}

enum EmployeeType {
  swe,
  finance,
  marketing
}