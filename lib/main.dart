import 'package:flutter/material.dart';
import './widgets/taskHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: Colors.black54,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
          )),
      home: taskHome(),
    );
  }
}
