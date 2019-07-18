import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class PlanControl extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PlanControlState();
  }
}



class _PlanControlState extends State<PlanControl>{

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
          Text('Plan de la semaine',style: TextStyle(color: Colors.white,fontSize: 17.0),),
          IconButton(
            icon: Icon(FontAwesomeIcons.random,color: Colors.white,),
            onPressed: (){

            },
          ),
        ],
      ),
    );
  }


}