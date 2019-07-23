import 'package:flutter/material.dart';
import 'globals.dart' as globals;

class ShoppingList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ShoppingListState();
  }
}

class _ShoppingListState extends State<ShoppingList>{

  Widget listOfIngredients(){
    if(globals.validatedRecipes.isEmpty){
      return Center(
        child: Text('La liste de course est vide'),
      );
    }

    return Center(
      child: Text(globals.validatedRecipes[1]['ingredients'].toString()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return listOfIngredients();
  }
}