import 'dart:ui';
import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:disney_plus_clone/features/InitialScreen/components/choose_watching.dart';
import 'package:flutter/material.dart';
import 'package:disney_plus_clone/json/avatar.dart';


class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {

  Color lightBlue = DesignColors.lightBlue();
  Color darkBlue = DesignColors.darkBlue();
  Color dark = DesignColors.dark();


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: _appBar(size),
      body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(
            top: size.width * 0.03,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.8],
                colors: [lightBlue, darkBlue],
              )
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Center(
                  child: Text(
                      'Who`s Watching?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.05
                      )
                  ),
                ),
              ),
              SingleChildScrollView(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(
                    left: size.width * 0.07,
                    right: size.width * 0.07,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.9,
                  ),
                  itemCount: avatar.length + 1,
                  itemBuilder: (context, index) {
                    if(index >= avatar.length){
                      return _addProfile(size);
                    } else {
                      return ChooseWatching(avatar: avatar[index]);
                    }
                  },
                ),
              )
            ],
          )
      ),
    );
  }

  Widget _appBar(Size size){
    return AppBar(
      backgroundColor: lightBlue,
      elevation: 0,
      actions: [
        Container(
          margin: EdgeInsets.only(
              right: size.width * 0.05,
              top: size.width * 0.05
          ),
          child: Text('Edit Profiles',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.035
              )
          ),
        )
      ],
    );
  }

  Widget _addProfile(Size size){
    return Column(
      children: [
        Container(
          height: size.width * 0.28,
          width: size.width * 0.28,
          margin: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            color: dark.withOpacity(0.4),
            borderRadius: BorderRadius.all(Radius.circular(150)),
          ),
          child: Icon(
            Icons.add,
            color: Colors.white.withOpacity(0.8),
            size: size.width * 0.12,
          ),
        ),
        Text(
            'Add Profile',
            style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: size.width * 0.05
            )
        )
      ],
    );
  }
}
