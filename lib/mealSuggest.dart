import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MealSuggest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MealSuggestState();
  }
}

class _MealSuggestState extends State<MealSuggest> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double font = MediaQuery.of(context).textScaleFactor;

    return Container(
      width: width/1,
      height: height/2,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset('assets/lundi_106.jpg',fit: BoxFit.fill,),
              )
          );
        },
        itemCount: 7,
        itemWidth: width/1.3,
        layout: SwiperLayout.STACK,
        pagination: SwiperPagination(
          margin: EdgeInsets.all(5.0),
        ),
      ),
    );
  }
}
