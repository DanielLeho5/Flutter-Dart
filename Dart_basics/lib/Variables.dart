void main(List<String> args) {
  // Variables to store data

  // Declaration:
  // <dataType> <variableName> = value;
  // cameCase convention

  // int
  int number1 = 19;
  int number2 = 32;

  print(number1 * number2);

  // double
  double dub1 = 19.5;
  double dub2 = 32.75;

  print(dub1 * dub2);

  // string
  String name = "Daniel";
  print(name);

  // bool
  bool boolVal = true;
  print(boolVal);

  // dynamic = any type of value
  dynamic dynamicValue = 10;
  dynamicValue = "Hello";
  dynamicValue = false;
  print(dynamicValue); // doesnt have method autofill, or compile time errors
}