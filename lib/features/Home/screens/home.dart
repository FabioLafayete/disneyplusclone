import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:disney_plus_clone/bloc/avatar_bloc.dart';
import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:disney_plus_clone/features/Downloads/screens/downloads.dart';
import 'package:disney_plus_clone/features/Home/components/avatar_selected.dart';
import 'package:disney_plus_clone/features/Profile/screens/profile.dart';
import 'package:disney_plus_clone/features/Search/screens/search.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int page = 0;

  Color lightBlue = DesignColors.lightBlue();
  Color darkBlue = DesignColors.darkBlue();
  Color dark = DesignColors.dark();

  List<Widget> widgets = [
    HomeScreen(),
    Search(),
    Downloads(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: darkBlue,
      appBar: page == 0 || page == 2 ? _appBar(size) : null,
      body: widgets[page],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: size.width * 0.08,
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          backgroundColor: darkBlue,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: page,
          onTap: (p){
            setState(() {
              page = p;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.download_rounded), label: 'Downloads'),
            BottomNavigationBarItem(icon: AvatarSelected(), label: 'Profile')
          ]
      ),
    );
  }

  Widget _appBar(Size size){
    return AppBar(
        backgroundColor: lightBlue,
        elevation: 0.0,
        centerTitle: page == 0 ? true : false,
        title: page == 0 ?
        Image.asset(
          'assets/logo.png',
          height: size.width * 0.25,
          width: size.width * 0.25,
        )
            : page == 2 ?
        Text(
          'Downloads',
          style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.05
          ),
        )
            :
        Container()
    );
  }
}
