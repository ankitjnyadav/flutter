import 'package:flutter/material.dart';

class LWDB extends StatelessWidget {
  List<String> students = [
    "vimal",
    "krish",
    "jack",
    "linux",
    "pop",
    's',
    'sf',
    'fs',
    'as',
    'sf',
    'asf',
    'sas',
    'sws'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DB students'),
        ),
        body: ListView.builder(
            itemCount: students.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(students[index]),
                  subtitle: Text('id of student'),
                  // leading: Icon(Icons.accessibility),
                  leading: CircleAvatar(
                    child: Text('V'),
                  ),
                  trailing: RaisedButton(
                    child: Text("..."),
                    onPressed: () {
                      Navigator.pushNamed(context, "/vimal");
                    },
                  ),
                ),
              );
            }));
  }
}
