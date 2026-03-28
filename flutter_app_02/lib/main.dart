import 'package:flutter/material.dart'; // import flutter material

void main(List<String> args) {
  // flutter starts the app
  runApp(const MyApp());
}

// Types of widgets
// StatelessWidget - StatefulWidget - (InheritedWidget)
// StatelessWidget only has immutable data

// MyApp creates a container for the components
class MyApp extends StatelessWidget {

  const MyApp({super.key}); // creating a constructor to be able to pass a key to parent class

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( // MaterialDesign / CupertionDesign -> Design systems created by Googe/Apple
      home: Scaffold( // creates the "sandbox"
        body: Center( // centers the element thats inside => so this is just a styling element
          child: Text("Home")
        )
      )
    );
  }
}