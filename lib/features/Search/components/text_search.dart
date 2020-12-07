import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Color dark = DesignColors.dark();

    Size size = MediaQuery.of(context).size;

    return Container(
      color: dark,
      height: size.width * 0.13,
      margin: EdgeInsets.only(
        left: size.width * 0.03,
        right: size.width * 0.03,
        bottom: size.width * 0.02,
      ),
      padding: EdgeInsets.only(
        left: size.width * 0.03,
        right: size.width * 0.03,
      ),
      child: Center(
        child: TextField(
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white.withOpacity(0.9)),
          inputFormatters: [LengthLimitingTextInputFormatter(25)],
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.8)),
            //contentPadding: EdgeInsets.only(top: size.width * 0.1),
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: size.width * 0.07,
            ),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
