import 'package:flutter/material.dart';
import 'package:nav/db.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('click here for db ..'),
            onPressed: () {
              // print('clicked');
              // Navigator.push(
              //   context, MaterialPageRoute(builder: (context) => MyDB()));

              Navigator.pushNamed(context, "/lwdb");
            },
          ),
          RaisedButton(
            child: Text('click here for vimal ..'),
            onPressed: () {
              // print('clicked');
              // Navigator.push(
              //   context, MaterialPageRoute(builder: (context) => MyDB()));

              Navigator.pushNamed(context, "/vimal");
            },
          ),
        ],
      ),
    );
  }
}
