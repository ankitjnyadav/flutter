import 'package:flutter/material.dart';

void main() {
  runApp(DOTF());
}

class DOTF extends StatelessWidget {
  @override
  String cmd;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DOTF'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.grey.shade100,
            child: Column(
              children: <Widget>[
                TextField(
                  onChanged: (value) {
                  cmd  = value;
                  },
                  autocorrect: false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your docker command",
                      prefixIcon: Icon(Icons.tablet_mac)
                    ),
                )
                FlatButton(
                  onPressed: null,
                  child: Text('Click Me'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///usr/lib/cgi-bin
