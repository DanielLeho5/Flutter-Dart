void main(List<String> args) {

  // mutable (var) --------------------------------------------------

  var value1 = 10; // not dynamic, but smart -> has compile-time method autofill, and type-assignment error detection
  //value1 = "string"; // error
  print(value1);

  // immutabel types (final/const) ------------------------------------------
  // final : runtime constant
  // const : compile-time constant

  final value2 = 10;
  //value2 = 20; // can't be reassigned, only once (if not with declaration)

  final value3;
  value3 = 20; // okay

  const value4 = 10;
  //value4 = 20; // can't be reassigned

  // can add additional type definiton
  final int val1 = 12;
  const int val2 = 12;
}