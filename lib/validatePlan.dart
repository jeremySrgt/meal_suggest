import 'package:flutter/material.dart';

class ValidatePlan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ValidatePlanState();
  }
}

class _ValidatePlanState extends State<ValidatePlan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Valider la semaine',
            style: TextStyle(fontSize: 17.0, color: Colors.white),
          ),
          IconButton(
            icon: Icon(
              Icons.check,
              color: Colors.white,
            ),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
