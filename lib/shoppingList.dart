import 'package:flutter/material.dart';
import 'globals.dart' as globals;

class ShoppingList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShoppingListState();
  }
}

class _ShoppingListState extends State<ShoppingList> {

  Widget ingredients(a){
    return ListView.builder(
      itemCount: globals.validatedRecipes[a]['ingredients'].length,
      itemBuilder: (BuildContext context, index){
        return Text(globals.validatedRecipes[a]['ingredients'][index]);
      },
    );
  }

  Widget listOfIngredients() {
    if (globals.validatedRecipes.isEmpty) {
      return Center(
        child: Text('La liste de course est vide'),
      );
    }

    return Expanded(
      child: ListView.builder(
        itemCount: globals.validatedRecipes.length,
        itemBuilder: (BuildContext context, index) {
          return Column(
            children: <Widget>[
              Text(globals.validatedRecipes[index]['name']),
              Text(globals.validatedRecipes[index]['preparation_time']
                  .toString()),
              Container(
                height: 100,
                child: ingredients(index),
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return listOfIngredients();
  }
}
