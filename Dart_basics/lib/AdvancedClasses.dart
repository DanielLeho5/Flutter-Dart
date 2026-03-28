void main(List<String> args) {
  Cookie cookie = Cookie("circle", 10.5);

  print(cookie.height); // getter
  //cookie.height = 10;  // read only value

  cookie.setHeight = 15; // setter
  print(cookie.height);

  print(Constants.greeting);
  print(Constants.bye);
  Constants.printConstants();

  Cookie cookie2 = Cookie("circle", 10.5);
  Cookie cookie3 = Cookie("circle", 10.5);
  print("Number of cookies created: ${Cookie.numberOfCookies}");
}

class Cookie {

  final String shape;
  final double diameter;
  static int numberOfCookies = 0;

  Cookie( String this.shape, double this.diameter) {
    numberOfCookies++;
  }

  // Private variables - don't exist, only private to files

  int _height = 10;
  int _width = 5;

  int calculateSize() {
    return _height * _width;
  }

  // Getters

  int get height => _height;

  // Setters

  set setHeight(int h) {
    _height = h;
  }
}

class Constants {
  // static variables
  static String greeting = "Hello";
  static String bye = "Goodbye";

  // static functions
  static void printConstants() {
    print({greeting, bye});
  }
}