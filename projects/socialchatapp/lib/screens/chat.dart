import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class MyChat extends StatefulWidget {
  @override
  _MyChatState createState() => _MyChatState();
}

class _MyChatState extends State<MyChat> {
  String msg;

  var fs = FirebaseFirestore.instance;

  getmsglive() async {
    await for (var ss in fs.collection("chat").snapshots()) {
      for (var doc in ss.docs) {
        print(doc.data());
      }
    }
  }

  @override
  void initState() {
    print("landed to chat");

    super.initState();
  }

  var authc = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Page"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () async {
                print("sign off");
                await authc.signOut();
                Navigator.pushNamed(context, "login");
              }),
        ],
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (value) {
              msg = value;
            },
          ),
          FlatButton(
              onPressed: () async {
                await fs.collection("chat").add({
                  "text": msg,
                  "sender": authc.currentUser.email,
                });
              },
              child: Text('send msg')),
          FlatButton(
              onPressed: () {
                getmsglive();
              },
              child: Text('get stream')),
          FlatButton(
              onPressed: () async {
                var msgdoc = await fs.collection('chat').get();
                // print(msgdoc.docs[0].data());
                for (var i in msgdoc.docs) {
                  print(i.data());
                }

                print(msg);
              },
              child: Text('Get msg')),
          RaisedButton(
            onPressed: () {
              try {
                var user = authc.currentUser;
                print(user.email);
              } catch (e) {
                print(e);
              }
            },
            child: Text('click to know who u r'),
          ),
        ],
      ),
    );
  }
}
