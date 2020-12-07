import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:disney_plus_clone/bloc/avatar_bloc.dart';
import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:flutter/material.dart';
import 'package:disney_plus_clone/json/avatar.dart';

class ListAvatar extends StatefulWidget {
  @override
  _ListAvatarState createState() => _ListAvatarState();
}

class _ListAvatarState extends State<ListAvatar> {

  Color dark = DesignColors.dark();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    final bloc = BlocProvider.of<AvatarBloc>(context);

    return StreamBuilder(
      stream: bloc.outAvatar,
      builder: (_, snapshot){

        if(snapshot.hasData) {
          int index = avatar.indexOf(snapshot.data);
          avatar.removeAt(index);
          avatar.insert(0, snapshot.data);

          return Container(
            height: size.width * 0.34,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  avatar.length,
                      (index) => _avatar(size, avatar[index], snapshot.data)
              )
                ..add(_addProfile(size)),
            ),
          );

        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _avatar(Size size, dynamic avatar, dynamic selected){
    return Container(
      margin: EdgeInsets.only(right: size.width * 0.03),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(150)),
            ),
            padding: selected['path'] == avatar['path'] ? EdgeInsets.all(3) : null,
            child: Image.asset(
              avatar['path'],
              fit: BoxFit.fill,
              height: size.width * 0.25,
              width: size.width * 0.25,
            ),
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

  Widget _addProfile(Size size){
    return Column(
      children: [
        Container(
          height: size.width * 0.25,
          width: size.width * 0.25,
          margin: EdgeInsets.only(bottom: size.width * 0.01),
          decoration: BoxDecoration(
            color: dark.withOpacity(0.4),
            borderRadius: BorderRadius.all(Radius.circular(150)),
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
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
