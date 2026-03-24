void main(List<String> args) async { // use async to use await

  print(giveResultLater()); // printing the Future object as it is that at the moment of calling

  print(await giveResultLater()); // wait for the result, then print (stops the code)

  giveResultLater().then((value) => print(value)); // print it as soon as it arrives (lets the code pass), then gives the val = return value

  final variable = await giveResultLater(); // final is assignable to fututre, but not const
  
  print('1');
  print('2');

  print(await giveResultLater3());

  print('3');
}

Future<String> giveResultLater() async {
  return "Hey1!";
}

Future<String> giveResultLater2() async {
  return Future(() {
    return "Hey2!";
  });
}

Future<String> giveResultLater3() async {
  return Future.delayed(Duration(seconds: 2), () {
    return "Hey!3";
  });
}