import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

// ignore: non_constant_identifier_names
weather_details(city) async {
  var url =
      "api.openweathermap.org/data/2.5/forecast?q=$city&appid=0c23d32a1addfbdb7a54421bd27a5b2f";
  var resp = await http.get(url);
  var data = resp.body;

  var paresedData = jsonDecode(data);
  print(paresedData['list'][0]['main']['temp']);
  return paresedData['list'][0]['main']['temp'];
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  String args, data;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('The Small Weather App'),
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Text(''),
                TextField(
                  onChanged: (value) {
                    args = value;
                  },
                  autocorrect: false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter City Name",
                      prefixIcon: Icon(Icons.border_color)),
                ),
                Text(''),
                CupertinoButton(
                  color: Colors.green.shade400,
                  onPressed: data = weather_details(args),
                  child: Text('Click Me'),
                ),
                Text(''),
                FlatButton(onPressed: null, child: Text(data))
              ],
            ),
          ),
        ));
  }
}
