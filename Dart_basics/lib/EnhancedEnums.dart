void main(List<String> args) {
  // Enums

  final employee1 = Employee("Daniel", EmployeeType.swe);
  final employee2 = Employee("Geezer", EmployeeType.finance);

  employee2.printEmployeeeType();
}

class Employee {
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  void printEmployeeeType() {
    switch (type) {
      case EmployeeType.swe:
        print("Software Engineer -> ${type.salary} (${type.name})");
      case EmployeeType.finance:
        print("Finance -> ${type.salary} (${type.name})");
      default:
        print("Marketing -> ${type.salary} (${type.name})");
    }
  }
}

enum EmployeeType {
  swe(10000),
  finance(30000),
  marketing(20000);

  final int salary;
  const EmployeeType(this.salary);
}