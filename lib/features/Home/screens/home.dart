import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:disney_plus_clone/features/Home/components/avatar_selected.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  PageController _pageController;
  int page = 0;

  Color lightBlue = DesignColors.lightBlue();
  Color darkBlue = DesignColors.darkBlue();
  Color dark = DesignColors.dark();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: _appBar(size),
      body: PageView(
        onPageChanged: (p){
          setState(() {
            page = p;
          });
        },
        controller: _pageController,
        children: <Widget>[
          HomeScreen(),
          Container(color: Colors.red),
          Container(color: Colors.orange),
          Container(color: Colors.green),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: darkBlue,
            primaryColor: Colors.white,
        ),
        child: BottomNavigationBar(
            iconSize: size.width * 0.08,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,

            currentIndex: page,
            onTap: (p){
              _pageController.animateToPage(
                  p,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease
              );
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.download_rounded), label: 'Downloads'),
              BottomNavigationBarItem(icon: AvatarSelected(), label: 'Profile')
            ]
        ),
      ),
    );
  }

  Widget _appBar(Size size){
    return AppBar(
        backgroundColor: lightBlue,
        elevation: 0.0,
        title: Image.asset(
          'assets/logo.png',
          height: size.width * 0.2,
          width: size.width * 0.2,
        )
    );
  }
}
