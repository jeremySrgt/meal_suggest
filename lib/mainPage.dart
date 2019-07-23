import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:suggestion_repas/mealSuggest.dart';
import 'shoppingList.dart';
import 'planControl.dart';
import 'validatePlan.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  Widget navigationBar() {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      items: <Widget>[
        Icon(
          Icons.add,
          size: 30,
        ),
        Icon(
          Icons.list,
          size: 30,
        ),
        Icon(
          Icons.account_circle,
          size: 30,
        ),
      ],
      onTap: (index) {
        setState(() {
          _page = index;
        });
      },
      animationDuration: Duration(milliseconds: 400),
    );
  }

  Widget _firstPage(){
    return Column(
      children: <Widget>[
//        PlanControl(),
        MealSuggest(),
//        ValidatePlan(),
      ],
    );
  }

  Widget pageBuilder() {
    switch (_page) {
      case 0:
        return _firstPage();
        break;
      case 1:
        return ShoppingList();
        break;
      case 2:
        return Center(
          child: Text('Profil'),
        );
        break;
      default:
        return Text('default');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: navigationBar(),
      appBar: AppBar(
        title: Text(
          'Meal Suggest',
          style: TextStyle(fontSize: 30.0),
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            pageBuilder(),
          ],
        ),
      ),
    );
  }
}
