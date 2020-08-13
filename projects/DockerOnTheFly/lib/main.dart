import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(DOTF());
}

web(cmd) async {
  var url = "http://192.168.31.137/cgi-bin/docker.py?x=${cmd}";
  var resp = await http.get(url);
  print(resp.body);
}

class DOTF extends StatelessWidget {
  @override
  String cmd;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Docker On The Fly - DOTF'),
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
                    cmd = value;
                  },
                  autocorrect: false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your docker command",
                      prefixIcon: Icon(Icons.tablet_mac)),
                ),
                TextField(
                  onChanged: (value) {
                    cmd = value;
                  },
                  autocorrect: false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your docker command",
                      prefixIcon: Icon(Icons.tablet_mac)),
                ),
                FlatButton(
                  onPressed: () {
                    web(cmd);
                    print(cmd);
                  },
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
