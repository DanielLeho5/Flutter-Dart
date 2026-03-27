void main(List<String> args) {
  final records = (4.5, "Hi", true, 2);
  //records = (1, "asd", false, 3.2); // incorrect, type-safety

  print(records.$2); 
  print(records);

  ({int x, int y, int z}) point1 = (x: 1, y: 1, z: 1);
  ({int x, int y, int z}) point2 = (x: 1, y: 2, z: 1); // false, but are comparable
  //({int differentName, int y, int z}) point2 = (x: 1, y: 2, z: 1); // invalid, not comparable
  print(point1 == point2);

  final list = [1,2,3,4,5,6,7,8,9];
  final [a,_,c, ...d] = list;
  print((a,c,d));

  final jsoned = {
    "userId": 1,
    "title": "IDK",
  };

  if (jsoned case {"userId": int userId, 'title': String title}) {
    print((userId, title));
  } else {
    print("Incorrect JSON");
  }

  switch(jsoned) {
    case {"userId": int userId, 'title': String title}:
      print((userId, title));
    default:
      print("incorrect JSON");
  }

  final {"userId": userId, 'title': title} = jsoned;
  print((userId, title));
}

({double point, String greeting}) giveMeSomeDoubles() {
  return (point: 4.5, greeting: "Hey!");
}