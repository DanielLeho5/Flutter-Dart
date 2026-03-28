import 'package:flutter/material.dart'; // import flutter material
//import 'package:flutter_app_03/pages/currency_converter_page.dart'; // importing the other file
import './pages/currency_converter_page.dart'; // importing the other file (relative importing)

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterPage() // using another file as a component
    );
  }
}