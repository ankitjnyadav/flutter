import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socialchatapp/screens/chat.dart';
import 'package:socialchatapp/screens/home.dart';
import 'package:socialchatapp/screens/login.dart';
import 'package:socialchatapp/screens/reg.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(
    MaterialApp(
      initialRoute: "home",
      routes: {
        "home": (context) => MyHome(),
        "reg": (context) => MyReg(),
        "login": (context) => MyLogin(),
        "chat": (context) => MyChat(),
      },
    ),
  );
}
