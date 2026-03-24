void main(List<String> args) {
  

  Map<String, int> subjectGrades = {
    "Physiscs": 5,
    "Maths": 3,
    "English": 2
  };

  List<Map<String, int>> marks = [
    {
      "Physiscs": 5,
      "Maths": 3,
      "English": 2
    },
    {
      "Physiscs": 3,
      "Maths": 4,
      "English": 5
    },
    subjectGrades
  ];

  marks.map((element) {
    print(element);
  }).toList();

  marks.map((element) {
    element.forEach((key, value) {
      print("$key == $value");
    });
  }).toList();
}