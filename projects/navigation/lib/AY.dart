import 'package:flutter/material.dart';

class AY extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('vimal profile'),
      ),
      body: RaisedButton(
        child: Text('vimal'),
        onPressed: () {
          Navigator.pushNamed(context, "/db");
        },
      ),
    );
  }
}
