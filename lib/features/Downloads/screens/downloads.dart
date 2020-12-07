import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:flutter/material.dart';

class Downloads extends StatelessWidget {

  Color darkBlue = DesignColors.darkBlue();
  Color lightBlue = DesignColors.lightBlue();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [lightBlue, darkBlue],
          ),
        ),
        padding: EdgeInsets.only(
            left: size.width * 0.1,
            right: size.width * 0.1
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: size.width * 0.3,
              width:  size.width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(120),
                  border: Border.all(
                      width: 5,
                      color: Colors.white.withOpacity(0.2)
                  )
              ),
              child: Center(
                child: Icon(
                  Icons.download_rounded,
                  color: Colors.white.withOpacity(0.2),
                  size: size.width * 0.2,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
                'You have no downloads',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.045
                )
            ),
            SizedBox(height: 20),
            Text(
                'Movies and series you download will appear here.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: size.width * 0.045
                )
            ),
          ],
        ),
      ),
    );
  }
}
