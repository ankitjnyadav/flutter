import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('LW snack bar'),
          actions: <Widget>[Icon(Icons.accessibility)],
        ),
        body: MyAppBody(),
      ),
    );
  }
}

class MyAppBody extends StatefulWidget {
  @override
  _MyAppBodyState createState() => _MyAppBodyState();
}

class _MyAppBodyState extends State<MyAppBody> {
  var x = "hi";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          child: Text(x),
          onPressed: () {
            //print('hi');
            // var p = Scaffold.of(context).hasFloatingActionButton;
            // var p = Scaffold.of(context).hasAppBar;
            //print(p);
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('something selected  ...'),
                duration: Duration(seconds: 10),
              ),
            );
          },
        ),
      ),
    );
  }
}
