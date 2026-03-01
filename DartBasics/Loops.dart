void main(List<String> args) {
  // Loops
  print("=========================== For loop ===========================");

  // for loop
  for (int i = 0; i <= 6; i++) { // must be a finite loop or have a breakout statement
    print("Hello ${i+1}");
  }

  // substring
  String string = "Daniel";
  int start = 2;
  int end = 6;

  print(string.substring(start, end));

  // for loop through a string

  for (int i = 0; i < string.length; i++) {
    String letter = string[i];
    if (letter == "a") {
      continue; // continue -> goes to the next iteration
    } else if (letter == "e") {
      break; // stops the loop, throws you out of the loop
    } else {
      print(letter);
    }
  }

  // while loop
  print("=========================== While loop ===========================");

  int n = 0;

  while (n < 5) {
    print(n);
    n++;
  }

  // do while loop
  print("=========================== Do-while loop ===========================");

  n = 5;

  do { // runs atleast once
    print(n);
    n++;
  } while (n < 5);
}