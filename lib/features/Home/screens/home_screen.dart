import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:disney_plus_clone/features/Home/components/brands.dart';
import 'package:disney_plus_clone/features/Home/components/header_images.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Color lightBlue = DesignColors.lightBlue();
  Color darkBlue = DesignColors.darkBlue();
  Color dark = DesignColors.dark();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [lightBlue, darkBlue],
          ),
      ),
      child: ListView(
        children: [
          HeaderImages(),
          Brands()
        ],
      ),
    );
  }
}
