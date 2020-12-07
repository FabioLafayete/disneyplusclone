import 'package:disney_plus_clone/features/Design/colors.dart';
import 'package:disney_plus_clone/features/Search/components/explore.dart';
import 'package:disney_plus_clone/features/Search/components/showCollection.dart';
import 'package:disney_plus_clone/features/Search/components/text_search.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
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
        ),
      ),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            backgroundColor: lightBlue,
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(size.width * 0.15),
              child: TextSearch(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: size.width * 0.03),
              child: Column(
                children: [
                  Explore(),
                  ShowCollections()
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
