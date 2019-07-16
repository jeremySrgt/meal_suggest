import 'package:flutter/material.dart';
import 'mainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    SystemChrome.setPreferredOrientations([
//      DeviceOrientation.portraitUp,
//      DeviceOrientation.portraitDown,
//    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false, //retir la banniere de debug
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        accentColor: Colors.orangeAccent,
        fontFamily: 'Comfortaa',
      ),
      routes: {
        '/': (BuildContext context) => MainPage(),
      },
    );
  }
}
