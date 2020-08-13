import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(DOTF());
}

web(options, cmd, args) async {
  if (options == null) {
    print('Inside options');
    options = '';
  }
  if (args == null) {
    print('Inside args');
    options = '';
  }
  //I/flutter (24893): http://192.168.31.137/cgi-bin/docker.py?x=&y=ps&z=null
  var url = "http://192.168.31.137/cgi-bin/docker.py?x=$options&y=$cmd&z=$args";
  print(url);
  var resp = await http.get(url);
  print(resp.body);
}

class DOTF extends StatelessWidget {
  @override
  String options, cmd, args;
  TextEditingController tec = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Docker On The Fly - DOTF'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              width: 400,
              height: 400,
              color: Colors.transparent,
              //decoration: new BoxDecoration(),
              child: Column(
                children: <Widget>[
                  Text(''),
                  FlatButton(
                      onPressed: null,
                      color: Colors.green.shade500,
                      child: Text('Format: docker [OPTIONS] COMMAND [ARG...]')),
                  Text(''),
                  TextField(
                    onChanged: (value) {
                      options = value;
                    },
                    autocorrect: false,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter [OPTIONS]",
                        prefixIcon: Icon(Icons.border_color)),
                  ),
                  Text(''),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      cmd = value;
                    },
                    autocorrect: false,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter COMMAND",
                        prefixIcon: Icon(Icons.border_color)),
                  ),
                  Text(''),
                  TextField(
                    onChanged: (value) {
                      args = value;
                    },
                    autocorrect: false,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter [ARG...]",
                        prefixIcon: Icon(Icons.border_color)),
                  ),
                  Text(''),
                  CupertinoButton(
                    color: Colors.green.shade400,
                    onPressed: () {
                      web(options, cmd, args);
                      print(options);
                      print(cmd);
                      print(args);
                    },
                    child: Text('Click Me'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///usr/lib/cgi-bin
