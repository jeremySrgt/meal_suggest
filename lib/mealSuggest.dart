import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:suggestion_repas/validatePlan.dart';
import 'dart:convert';
import 'jsonRespond.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'globals.dart' as globals;

class MealSuggest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MealSuggestState();
  }
}

class _MealSuggestState extends State<MealSuggest> {

  Map jsonData;
  var recipes;
  List<dynamic> randomListOfRecipes;

  //get data from local JSON file
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

  //display day text using the index passed by the Swiper
  Widget dayText(index,width) {
    if (index == 0) {
      return Text(
        'Lundi',
        style: TextStyle(fontSize: width / 10, fontWeight: FontWeight.w800),
      );
    }
    if (index == 1) {
      return Text(
        'Mardi',
        style: TextStyle(fontSize: width / 10, fontWeight: FontWeight.w800),
      );
    }
    if (index == 2) {
      return Text(
        'Mercredi',
        style: TextStyle(fontSize: width / 10, fontWeight: FontWeight.w800),
      );
    }
    if (index == 3) {
      return Text(
        'Jeudi',
        style: TextStyle(fontSize: width / 10, fontWeight: FontWeight.w800),
      );
    }
    if (index == 4) {
      return Text(
        'Vendredi',
        style: TextStyle(fontSize: width / 10, fontWeight: FontWeight.w800),
      );
    }
    if (index == 5) {
      return Text(
        'Samedi',
        style: TextStyle(fontSize: width / 10, fontWeight: FontWeight.w800),
      );
    }
    if (index == 6) {
      return Text(
        'Dimanche',
        style: TextStyle(fontSize: width / 10, fontWeight: FontWeight.w800),
      );
    }

    return Text('erreur jour ?');
  }



  //build the card displaying the recipes with day, picture and description
  Widget dayCard(index){

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
                    dayText(index,width),
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
                        globals.listOfRecipes.isEmpty
                            ? 'Burger'
                            : globals.listOfRecipes[index]['name'],
                        style: TextStyle(
                          fontSize: width / 17,
                        ),
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
                  globals.listOfRecipes.isEmpty
                      ? 'Burger au steak haché'
                      : globals.listOfRecipes[index]['description'],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  //use to regenerate a random list of recipe to display in the dayCard
  Widget planControl(){
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
              print(recipes.resources); //affiche la 1ere recettes
              setState(() {
                randomListOfRecipes = recipes.resources;
              });
              globals.listOfRecipes = randomListOfRecipes;
            },
          ),
        ],
      ),
    );
  }


  //Validate the plan of the week so the shopping list can contain ingredients of each recipes
  Widget validatePlan(){
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
            onPressed: (){
              globals.validatedRecipes = globals.listOfRecipes;
            },
          ),
        ],
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double font = MediaQuery.of(context).textScaleFactor;

    return Column(
      children: <Widget>[
        planControl(),
        Container(
          width: width / 1,
          height: height / 2,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return dayCard(index);
            },
            itemCount: 7,
            itemWidth: width / 1.3,
            layout: SwiperLayout.STACK,
            pagination: SwiperPagination(
              margin: EdgeInsets.all(5.0),
              builder: SwiperPagination.rect,
            ),
          ),
        ),
        validatePlan(),
      ],
    );
  }
}
