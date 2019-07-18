import 'package:flutter/material.dart';

class DayCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DayCardState();
  }
}

class _DayCardState extends State<DayCard> {
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
                        Text(
                          'Lundi',
                          style: TextStyle(
                              fontSize: width / 10,
                              fontWeight: FontWeight.w800),
                        ),
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
                        Text(
                          'Burger',
                          style: TextStyle(fontSize: width / 16),
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
