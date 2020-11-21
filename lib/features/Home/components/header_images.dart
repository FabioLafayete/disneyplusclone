import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:disney_plus_clone/json/header_home.dart';

class HeaderImages extends StatefulWidget {
  @override
  _HeaderImagesState createState() => _HeaderImagesState();
}

class _HeaderImagesState extends State<HeaderImages> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 20),
      child: CarouselSlider(
          items: header.map((item){
            return ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Stack(
                children: [
                  Image.asset(
                    item['path'],
                    width: size.width,
                    height: size.width,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    item['name'],
                    width: size.width,
                    height: size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: size.width * 0.5,
            viewportFraction: 0.83,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 6),
            autoPlayAnimationDuration: Duration(milliseconds: 500),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          )
      ),
    );
  }
}
