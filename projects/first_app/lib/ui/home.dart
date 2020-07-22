import 'package:flutter/material.dart';

myApp() {
  print("Hi");
  var x = Text(
    'AY is Learning App Development',
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  var myIcon = Icon(
    Icons.favorite,
    color: Colors.pink,
  );

  my_fun() {
    print('Clicked On Button');
    Text('Clicked On Button');
  }

  var myEmailButton = IconButton(
    icon: Icon(
      Icons.email,
      color: Colors.grey.shade700,
    ),
    onPressed: my_fun,
  );

  var myCalendarButton = IconButton(
    icon: Icon(Icons.access_alarm),
    onPressed: my_fun,
  );
  var url = 'https://ankitjnyadav.github.io/img/e2.png';
  var myImage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );
  var titleText = AppBar(
    title: x,
    backgroundColor: Colors.blueAccent,
    //leading: myIcon,
    leading: myImage,
    actions: <Widget>[myEmailButton, myCalendarButton],
  );

  var myHome = Scaffold(
    appBar: titleText,
    // body: Center(
    //   child: Text('''
    //   Today's Learning:
    //   -----------------
    //   Icon
    //   TitleText
    //   AppBar
    //   onClick
    //   '''),
    // ),
    body: Center(child: myImage),
    backgroundColor: Colors.black12,
  );
  var design = MaterialApp(
    home: myHome,
    debugShowCheckedModeBanner: false,
    //To remove the DEBUG mode banner on top right section of the app.
  );
  return design;
}
