import 'dart:ffi';

void main(List<String> args) {
  // Maps
  Map marks = {
    "Daniel": 5,
    "Laura": 3,
    "Geezer": 2,
    1232313: true
  };

  Map<String, int> subjectGrades = {
    "Physiscs": 5,
    "Maths": 3,
  };

  print(subjectGrades["Maths"]);
  print(subjectGrades["Maths"]?.isEven);

  print(marks["John"] != null ? marks["John"] : "No grade for John");

  marks["Laura"] = 5;
  marks["Alexander"] = 3;

  print(marks);

  marks.addAll({"Someone": 3, "SomeoneElse": 2});
  print(marks);

  marks.remove("Geezer");
  print(marks);

  for (final key in marks.keys) {
    print("$key -> ${marks[key]}");
  }

  marks.forEach((key, value) {
    print("$key :::: $value");
  });
}