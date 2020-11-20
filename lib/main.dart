import 'package:disney_plus_clone/features/InitialScreen/initial_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disney + Clone',
      home: InitialScreen(),
    );
  }
}