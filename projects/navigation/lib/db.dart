import 'package:flutter/material.dart';

class MyDB extends StatelessWidget {
  List<String> students = ["vimal", "krish", "jack"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DB students'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              //print('go to home');
              // Navigator.pop(context);
              Navigator.pushNamed(context, "/");
            },
            child: Text('go to home'),
          ),

          //  Text('list of students'),
          ListView.builder(itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text('test data'),
              ),
            );
          })
        ],
      ),
    );
  }
}
