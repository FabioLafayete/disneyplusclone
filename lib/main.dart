import 'package:disney_plus_clone/features/Home/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disney + Clone',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}