import 'package:flutter/material.dart';
import 'package:love_notes/src/ui/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Love Notes",
      home: HomePageScreen(),
    );
  }
}
