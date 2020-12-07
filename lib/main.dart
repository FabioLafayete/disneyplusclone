import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:disney_plus_clone/bloc/avatar_bloc.dart';
import 'package:disney_plus_clone/features/InitialScreen/screens/initial_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: AvatarBloc(),
      child: MaterialApp(
        title: 'Disney+ Clone',
        debugShowCheckedModeBanner: false,
        home: InitialScreen(),
      ),
    );
  }
}