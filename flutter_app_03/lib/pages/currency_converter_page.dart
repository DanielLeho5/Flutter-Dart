import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget {

  const CurrencyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 78, 78, 78), // setting the background of the page
      // use ColoredBox() to debug alignment issues with a visible box, use color attribute (color: Color.fromRGBO(255, 0, 0, 1))
      body: Center(
          child: Column( // column to structure the app
            mainAxisAlignment: MainAxisAlignment.center, // center the content vertically
            //crossAxisAlignment: CrossAxisAlignment.center, // center the content horizontally - doenst work by itself
            children: [ // sub-elements of column
              Text(
                "0",
                style: TextStyle( // styling the text
                  fontSize: 40, // resize the text
                  fontWeight: FontWeight.bold, // bolding the text
                  color: Color.fromRGBO(255, 255, 255, 1)
                ),
              ),
              Padding( // can use Container() instead, its also has more functions
                padding: const EdgeInsets.only(
                  left: 20, right: 20 // + top, bottom id necessary
                ),
                child: TextField(
                  style: TextStyle( // text-styling
                    color: const Color.fromARGB(255, 96, 255, 117)
                  ),
                  decoration: InputDecoration( // styling the component itself
                    label: Text( // can use labelText instead, but this is more customizable
                      "Please enter the amount in HUF!", // setting a label
                      style: TextStyle( // styling the label
                        color: Colors.amber
                      )
                    ),
                    //helperText: "Hello",
                    hintText: "Example: 1000",
                    hintStyle: TextStyle(
                      color: Colors.redAccent
                    ),
                    //prefix: Text("Hello "), // prefix text
                    prefixIcon: Icon(Icons.monetization_on_outlined, color: Colors.white,), // prefix icon
                    suffixIcon: Icon(Icons.monetization_on_outlined, color: Colors.white,), // suffix icon
                    filled: true,
                    fillColor: const Color.fromARGB(255, 21, 54, 110), // fillcolor for the input
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amberAccent, 
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignInside, // where do i want the border to be, outside or inside the box?
                        style: BorderStyle.solid,
                      ), // amber colored outline border
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                  keyboardType: TextInputType.numberWithOptions(signed: false, decimal: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton( // a text button, that doesnt look like a button, but does an action
                  onPressed: () { // press -> event handling
                    // there are 3 modes: debug, relase, profile
                    if (kDebugMode) { // print only in debug mode
                      print("Button clicked!");
                    }
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 85, 85)),
                    minimumSize: WidgetStatePropertyAll(Size(double.infinity, 40)), // spans across 100% of available space horizontally
                    
                  ),
                  child: Text( // -> displays it
                    "Convert",
                  ),
                ),
              )
            ]
          )
      )
    );
  }
}