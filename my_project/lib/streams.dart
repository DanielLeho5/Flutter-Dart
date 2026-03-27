import 'dart:async';

void main(List<String> args) async {
  // streams

/*
  print(await countDown().first);

  // subscribing to the stream
  countDown().listen((value) {
    print(value);
    }, onDone: () {
      print("Completed!");
    }
  );

  countDown2().listen((value) {
    print(value);
    }, onDone: () {
      print("Completed!");
    }
  );

  print("Hi!!");
*/

  countDown3();
}

Stream<int> countDown() async* { // with async* can't use return
  for (var i = 10; i > 0; i--) {
    yield i; // provide the value
    await Future.delayed(Duration(milliseconds: 200)); // add a 200ms delay
  }
}

Stream<int> countDown2() {
  final controller = StreamController<int>();

  controller.sink.add(1);
  controller.stream.listen((val) {
    print(val);
  });

  return Stream.periodic(Duration(milliseconds: 200), (val) {
    return val;
  }); 
}

void countDown3() {
  final controller = StreamController<int>();

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.close();
  
  controller.sink.addError('Error occured!');

  controller.stream.listen((val) {
    print(val);
  }, onError: (e) => print(e),);

  controller.close();
}