import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:suggestion_repas/jsonRespond.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class PlanControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlanControlState();
  }
}

class _PlanControlState extends State<PlanControl> {

  Map jsonData;
  var recipes;

  Future<String> loadJsonData() async{
    var jsonString = await rootBundle.loadString('./assets/testjson.json');
    setState(() {
      jsonData = jsonDecode(jsonString);
      recipes = JsonRespond.fromJson(jsonData);
    });
    print(jsonData);
    return 'SUCCESS';
  }
  
  @override
  void initState() {
    super.initState();
    this.loadJsonData();
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double font = MediaQuery.of(context).textScaleFactor;

    return Container(
      padding: EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Plan de la semaine',
            style: TextStyle(color: Colors.white, fontSize: 17.0),
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.random,
              color: Colors.white,
            ),
            onPressed: () {
//              print(jsonData['result']['resources']);
            print(recipes.resources);
            },
          ),
        ],
      ),
    );
  }
}
