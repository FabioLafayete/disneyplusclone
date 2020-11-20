import 'dart:ui';
import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:flutter/material.dart';
import 'package:disney_plus_clone/json/avatar.dart';


class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    Color lightBlue = DesignColors.lightBlue();
    Color darkBlue = DesignColors.darkBlue();

    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(
            top: size.width * 0.1,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
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
                    childAspectRatio: 0.8,
                  ),
                  itemCount: avatar.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(
                          avatar[index]['path'],
                          fit: BoxFit.fill,
                          height: size.width * 0.28,
                          width: size.width * 0.28,
                        ),
                        SizedBox(height: size.width * 0.03),
                        Text(avatar[index]['name'],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width * 0.05
                            )
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          )
      ),
    );
  }
}
