import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
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
    );
  }

  Widget pageBuilder() {
    switch (_page) {
      case 0:
        return Center(
          child: Text('Planning'),
        );
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
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: navigationBar(),
      body: Center(
        child: pageBuilder(),
      ),
    );
  }
}
