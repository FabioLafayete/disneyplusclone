import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Color darkBlue = DesignColors.darkBlue();
    Color dark = DesignColors.dark();

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(size.width * 0.03),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Explore',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.08,
                  fontWeight: FontWeight.w600
              )
          ),
          SizedBox(height: size.width * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _containerType(size, Icons.star, 'Originals'),
              _containerType(size, Icons.movie_creation_outlined, 'Movies'),
              _containerType(size, Icons.tv_outlined, 'Series')
            ],
          )
        ],
      ),
    );
  }


  Widget _containerType(Size size, IconData icon, String text){

    Color darkBlue = DesignColors.darkBlue();

    return Container(
      decoration: BoxDecoration(
          color: darkBlue,
          borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      height: size.width * 0.25,
      width: size.width * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
              icon,
              color: Colors.white,
              size: size.width * 0.08
          ),
          SizedBox(height: size.width * 0.01),
          Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04
              )
          )
        ],
      ),
    );
  }

}
