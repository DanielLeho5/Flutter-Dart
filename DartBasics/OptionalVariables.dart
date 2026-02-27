void main(List<String> args) {
  // Optional variables
  // String/int/bool and null

  String? name; // null
  int? number = null;

  print(name);
  name = "Daniel";
  print(name!.toUpperCase()); // ! -> tells compiler that it's surely not null; can lead to runtime errors (compiletime errors ignored)

  final someValue = null; // dynamic type
  const someValue2 = null; // useless
}