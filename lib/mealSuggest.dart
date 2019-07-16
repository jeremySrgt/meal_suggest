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
    return Container(
      width: 400,
      height: 400,
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
        itemWidth: 300.0,
        layout: SwiperLayout.STACK,
        pagination: SwiperPagination(
          margin: EdgeInsets.all(5.0),
        ),
      ),
    );
  }
}
