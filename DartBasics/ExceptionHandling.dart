void main(List<String> args) {
  // Exception Handling

  print(10~/3); // truncating

  try {
    print(10~/0); // this throws an exception
  } on FormatException catch (e) { // catch a specific exception
    print(e);
  } catch (e) {
    print("Error occured: $e");
  } finally {
    print("This always executes");
  }
  
  print("Important");
}