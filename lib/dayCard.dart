import 'package:flutter/material.dart';

class DayCard extends StatefulWidget {

  final dayIndex;
  DayCard({@required this.dayIndex});

  @override
  State<StatefulWidget> createState() {
    return _DayCardState();
  }
}

class _DayCardState extends State<DayCard> {

  int day = 0 ;


  Widget dayText(width){
    if(widget.dayIndex == 0){
      return Text(
        'Lundi',
        style: TextStyle(
            fontSize: width / 10,
            fontWeight: FontWeight.w800),
      );
    }
    if(widget.dayIndex == 1){
      return Text(
        'Mardi',
        style: TextStyle(
            fontSize: width / 10,
            fontWeight: FontWeight.w800),
      );
    }
    if(widget.dayIndex == 2){
      return Text(
        'Mercredi',
        style: TextStyle(
            fontSize: width / 10,
            fontWeight: FontWeight.w800),
      );
    }
    if(widget.dayIndex == 3){
      return Text(
        'Jeudi',
        style: TextStyle(
            fontSize: width / 10,
            fontWeight: FontWeight.w800),
      );
    }
    if(widget.dayIndex == 4){
      return Text(
        'Vendredi',
        style: TextStyle(
            fontSize: width / 10,
            fontWeight: FontWeight.w800),
      );
    }
    if(widget.dayIndex == 5){
      return Text(
        'Samedi',
        style: TextStyle(
            fontSize: width / 10,
            fontWeight: FontWeight.w800),
      );
    }
    if(widget.dayIndex == 6){
      return Text(
        'Dimanche',
        style: TextStyle(
            fontSize: width / 10,
            fontWeight: FontWeight.w800),
      );
    }

    return Text('erreur jour ?');

  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double font = MediaQuery.of(context).textScaleFactor;

    return Container(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        dayText(width),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          './assets/burger.png',
                          height: 140,
                          width: 140,
                        ),
                        Container(
                          width: 160,
                          child: Text(
                            'Burger',
                            style: TextStyle(fontSize: width / 17,),
                            maxLines: 3,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      'Burger au steak haché avec salade tomates onions Burger au steak haché avec salade tomates onions Burger au steak haché avec salade tomates onions Burger au steak haché avec salade tomates onions Burger au steak haché avec salade tomates onions',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            )));
  }
}
