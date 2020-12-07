import 'package:flutter/material.dart';
import 'package:disney_plus_clone/json/collections.dart';

class ShowCollections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
        left: size.width * 0.03,
        right: size.width * 0.03,
      ),
      child: GridView.builder(
        itemCount: collections.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: size.width * 0.04,
          crossAxisSpacing: size.width * 0.03,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (_, index){
          return _collection(size, collections[index]);
        },
      ),
    );
  }

  Widget _collection(Size size, String image){

    return Container(
      child: Image.asset(
        image,
        width: size.width * 0.5,
        height: size.width * 0.9,
        fit: BoxFit.fill,
      ),
    );
  }

}
