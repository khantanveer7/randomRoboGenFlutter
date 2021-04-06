import 'package:flutter/material.dart';
import 'package:robo_gen/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Robo Gen",
      home: Home(),
    );
  }
}
