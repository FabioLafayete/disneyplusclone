import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:disney_plus_clone/features/Home/components/brands.dart';
import 'package:disney_plus_clone/features/Home/components/header_images.dart';
import 'package:disney_plus_clone/features/Home/components/show_medias.dart';
import 'package:flutter/material.dart';
import 'package:disney_plus_clone/json/collections.dart';
import 'package:disney_plus_clone/json/movies.dart';

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
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.8],
            colors: [lightBlue, darkBlue],
          ),
      ),
      child: ListView(
        children: [
          HeaderImages(),
          Brands(),
          ShowMedias(data: collections, title: 'Collections'),
          ShowMedias(data: movies, title: 'Action and Adventure'),
          ShowMedias(data: movies, title: 'Originals'),
          ShowMedias(data: movies, title: 'Featured Movies'),
          ShowMedias(data: movies, title: 'Trending'),
          ShowMedias(data: movies, title: 'Hit Movies'),
        ],
      ),
    );
  }
}
