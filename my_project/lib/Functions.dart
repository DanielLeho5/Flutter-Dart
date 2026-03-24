void main(List<String> args) {
  // Functions

  /*
    <returnType> <functionName>(){}
  */

  void printValue(value) { // parameter is implicitly dynamic
    print("Hello, your value was: $value, the type is: ${value.runtimeType}");
  }

  printValue("man");

  String? doubleName(String string) { // String? : return String or null
    return string * 2;
    // no code will run after the return
  }

  print(doubleName("hello"));

  int add(int num1, int num2) {
    return num1 + num2;
  }

  print("2 + 4 is: ${add(2, 4)}");

  var val1 = doubleName("string");
  //const val2 = doubleName("string"); // error, can't assign function return type to constant
  final val3 = doubleName("string");

  // multiple return values
  (int, String, bool) someFunction() {
    return (12, "hello", true);
  }

  print(someFunction());
  print(someFunction().$1);
  print(someFunction().$2);
  print(someFunction().$3);

  // destructuring
  var (age, greeting, boolValue) = someFunction();
  print(age);

  // named arguments
  void someFunction2({String name = "Daniel", required int age, bool? isStudent}) { // default value / required / nullable value
    return null;
  }

  someFunction2(name: "Dan", age: 12, isStudent: false);

  // positional and named arguments
  void someFunction3(int iq, {String name = "Daniel", required int age, bool? isStudent}) {
    return null;
  }

  // named return values
  ({int age, String name}) someFunction4() {
    return (age: 12, name: "Daniel");
  }

  print(someFunction4().age);
  print(someFunction4().name);

  // return a function
  Function returnAFunction() {
    return () {
      print("Helloooo!");
    };
  }

  returnAFunction()();

  // arrow function
  void printStuff() => print("arrow_function");
  printStuff();
}