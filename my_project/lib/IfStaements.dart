void main(List<String> args) {
  // If Statemenets

  int age = -18;

  // pass in a boolean value, like (age >= 18)
  // < > == >= <= !=

  if (age >= 18) {
    print("Your are an adult!");
  } else if (age <= 0) {
    print("You haven't been born yet!");
  } else {
    print("You are a child!");
  }

  bool isStudent = true;

  // && - and

  if (age <= 21 && isStudent) {
    print("Discount!");
  } else {
    print("No discount!");
  }

  // || - or
  // !boolVal - negation

  if (!isStudent || age >= 30) {
    print("You are not student!");
  } else {
    print("You are a student!");
  }

  String name = "";

  if (name.isEmpty) {
    print("You don't have a name!");
  } else if (name.endsWith("l")) {
    print("Your name ends with 'l'.");
  }

  // Ternary

  String equation = 1 == 2 ? "The equation is correct (true)" : "The equation is incorrect (false)";

  // Switch

  String day = "Monday";

  switch(day) {
    case "Monday":
      print("It's Monday! Nooo...");
      // no need to put break, only with an empty case
    case "Tuesday":
      print("It's Tuesday! C'mon...");
    default:
      print("It's a good day...");
  }

  bool born = true;

  // enhanced switch
  switch (born) {
    case true when age >= 18:
      print("You are an adult!");
    case false when age < 1:
      print("You haven't been born yet!");
    default:
      print("You are a child!");
  }
}