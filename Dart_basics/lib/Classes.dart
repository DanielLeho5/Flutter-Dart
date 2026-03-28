// Classes

void main(List<String> args) {

  final Cookie cookie = new Cookie("circle", 4.5); // creating an instance
  //cookie = Cookie(); // error because of final, but properties can be changed

  // calling methods, and accesing properties of our cookie object
  cookie.baking();
  print("The shape of the cookie is ${cookie.shape}.");
  print("The diameter of the cookie is ${cookie.size} cm.");
  if (cookie.isCooling()) {
    print("The cookie is cooling!");
  }

  cookie.shape = "rectangle"; // re-asigning property despite final object variable
  print("The shape of the cookie is ${cookie.shape}.");
}

// PascalCase
class Cookie {
  // properties

  String shape = "triangle";
  double size = 4.3;

  // methods

  // constructor

  // Cookie(this.shape, this.size);

  Cookie(this.shape, this.size) { // setting the value automatically
    print("Countructor was called");
  }

  void baking() {
    print("Cookie is baking!");
  }

  bool isCooling() {
    return true;
  }

}