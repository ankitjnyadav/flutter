import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  @override
  String cmd, ip_address;
  Widget build(BuildContext context) {
    Future<String> createAlertDialog(BuildContext context) {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Enter the Server IP"),
              content: TextField(onChanged: (value) {
                ip_address = value;
              }),
              actions: <Widget>[
                MaterialButton(
                    elevation: 5.0,
                    child: Text('Submit'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    })
              ],
            );
          });
    }
  }
}
