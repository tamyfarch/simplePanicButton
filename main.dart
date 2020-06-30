import 'package:flutter/material.dart';
import 'package:pbthatworks/widpanicbutton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panic Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaBu(),
    );
  }
}
