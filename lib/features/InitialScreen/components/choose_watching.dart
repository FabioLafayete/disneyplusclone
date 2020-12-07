import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:disney_plus_clone/bloc/avatar_bloc.dart';
import 'package:disney_plus_clone/features/Home/screens/home.dart';
import 'package:flutter/material.dart';

class ChooseWatching extends StatelessWidget {

  final avatar;

  const ChooseWatching({this.avatar});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    final bloc = BlocProvider.of<AvatarBloc>(context);

    return GestureDetector(
      onTap: (){
        bloc.inAvatar.add(avatar);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context)=>Home())
        );
      },
      child: Column(
        children: [
          Image.asset(
            avatar['path'],
            fit: BoxFit.fill,
            height: size.width * 0.28,
            width: size.width * 0.28,
          ),
          SizedBox(height: size.width * 0.01),
          Text(avatar['name'],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.05
              )
          ),
        ],
      ),
    );
  }
}
