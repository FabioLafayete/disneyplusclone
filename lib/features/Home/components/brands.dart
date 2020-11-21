import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:flutter/material.dart';
import 'package:disney_plus_clone/json/brands.dart';

class Brands extends StatelessWidget {

  Color lightBlue = DesignColors.lightBlue();

  Color color1 = Color.fromRGBO(10, 22, 65, 1.0);
  Color color2 = Color.fromRGBO(12, 53, 138, 1.0);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
        bottom: 10
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(brands.length, (index){
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [color1, color2],
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: Colors.white,
                width: 0.3
              )
            ),
            child: Center(
              child: Image.asset(
                brands[index],
                width: size.width * 0.17,
                height: size.width * 0.135,
                fit: BoxFit.cover,
              ),
            ),
          );
        }),
      ),
    );
  }
}
