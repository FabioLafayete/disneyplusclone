import 'package:flutter/material.dart';

class ShowMedias extends StatefulWidget {

  List<String> data;
  final title;

  ShowMedias({this.data, this.title});

  @override
  _ShowMediasState createState() => _ShowMediasState();
}

class _ShowMediasState extends State<ShowMedias> {

  List<String> media = [];

  @override
  void initState() {
    super.initState();
    widget.data.forEach((element) {
      media.add(element);
    });
    if(widget.title != 'Collections')
    media.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
              left: size.width * 0.04,
              top: 15,
              bottom: 15
          ),
          child: Text(
              widget.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04,
              )
          ),
        ),
        Container(
          height: size.width * 0.3,
          margin: EdgeInsets.only(bottom: 15),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: List.generate(media.length, (index){
              return Container(
                margin: EdgeInsets.only(left: size.width * 0.03,
                right: index >= media.length -1 ? size.width * 0.03 : 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(
                    media[index],
                    width: size.width * 0.42,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
