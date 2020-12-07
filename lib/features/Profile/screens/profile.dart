import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:disney_plus_clone/features/Profile/components/list_avatar.dart';
import 'package:disney_plus_clone/features/Profile/components/list_options.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Color lightBlue = DesignColors.lightBlue();
    Color darkBlue = DesignColors.darkBlue();
    Color dark = DesignColors.dark();
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.8],
            colors: [lightBlue, darkBlue],
          )
      ),
      padding: EdgeInsets.all(size.width * 0.03),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListAvatar(),
            _button(size),
            ListOptions()
          ],
        ),
      ),
    );
  }

  Widget _button(Size size){

    return Container(
      margin: EdgeInsets.only(
        top: size.width * 0.1,
        left: size.width * 0.24,
        right: size.width * 0.24,
        bottom: size.width * 0.1,
      ),
      height: size.width * 0.12,
      child: RaisedButton(
        child: Text(
            'EDIT PROFILES',
            style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.045
            )
        ),
        color: Colors.white.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: (){},
      ),
    );
  }

}
