import 'package:http/http.dart' as http; // all is accisable with "http."
// use a dart project
// install http package
// then it can be imported

import 'dart:convert';

void main() async {

  var url = Uri.https('jsonplaceholder.typicode.com', '/users/1');

  try {
    var res = await http.get( // this is how to get an api response
    url, 
    headers: { // use this to avoid cloudflare blockage, to simulate a browser
        'User-Agent': 'Mozilla/5.0',
        'Accept': 'application/json',
      }
    );

    //print(res.body); // res.body is string

    dynamic user = jsonDecode(res.body); // convert it to an object from json string
    print(user["name"]);

  } catch (e) {
    print(e);
  }
}