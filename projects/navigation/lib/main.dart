import 'package:flutter/material.dart';
import 'package:nav/db.dart';
import 'package:nav/home.dart';
import 'package:nav/lwdb.dart';
import 'package:nav/vimal.dart';

void main() {
  runApp(
    MaterialApp(
      // home: MyHome(),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHome(),
        "/db": (context) => MyDB(),
        "/vimal": (context) => AY(),
        "/lwdb": (context) => LWDB(),
      },
    ),
  );
}
