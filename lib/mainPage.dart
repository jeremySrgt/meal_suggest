import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:suggestion_repas/mealSuggest.dart';

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

  Widget pageBuilder() {
    switch (_page) {
      case 0:
        return MealSuggest();
        break;
      case 1:
        return Center(
          child: Text('liste de course'),
        );
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
      body: Center(
        child: pageBuilder(),
      ),
    );
  }
}
