import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:flutter/material.dart';

class AvatarSelected extends StatelessWidget {

  Color lightBlue = DesignColors.lightBlue();
  Color darkBlue = DesignColors.darkBlue();
  Color dark = DesignColors.dark();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(150)),
      ),
      padding: EdgeInsets.all(1),
      child: Image.asset(
        'assets/Avatar/01.png',
        height: size.width * 0.08,
      ),
    );
  }
}
