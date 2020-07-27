import 'package:flutter/material.dart';

myapp1() {
  var myBody = Text('Body');
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('AY App Tittle'),
      ),
      body: myBody,
    ),
  );
}
