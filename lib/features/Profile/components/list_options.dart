import 'package:disney_plus_clone/features/InitialScreen/screens/initial_screen.dart';
import 'package:flutter/material.dart';

class ListOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    List<String> _texts = [
      'Watchlist',
      'App Settings',
      'Account',
      'Legal',
      'Help',
      'Log Out',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
          _texts.length,
              (index) => _textOption(size, _texts[index], context)
      )..add(_version(size)),
    );
  }

  Widget _textOption(Size size, String text, BuildContext context){

    return GestureDetector(
      onTap: (){
        if(text == 'Log Out'){
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context)=>InitialScreen())
          );
        }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: size.width * 0.08),
        child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.04
            )
        ),
      ),
    );
  }
  
  Widget _version(Size size){
    return Text(
        'Version: 1.11.2 (2011182)',
        style: TextStyle(
            color: Colors.white.withOpacity(0.3),
            fontSize: size.width * 0.04
        )
    );
  }
}
