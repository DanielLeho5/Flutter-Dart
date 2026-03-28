void main(List<String> args) {
  print("daniel".capitaize());
}

extension Capitaize on String { // creating a method that can be called on all strings
  String capitaize() {
    return this[0].toUpperCase() + this.substring(1);
  }
}