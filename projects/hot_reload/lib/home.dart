import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

MyApp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.black);
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('AY'),
          backgroundColor: Colors.red,
        ),
      ));
}
