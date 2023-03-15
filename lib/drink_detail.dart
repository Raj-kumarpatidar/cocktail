import 'package:cocktail/main.dart';
import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final drink;

  const DrinkDetail({super.key, @required this.drink});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            myColor,
            Colors.orange,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            drink["strDrink"],
          ),
          elevation: 0,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: drink["idDrink"],
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                      drink["strDrinkThumb"],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  // "Index $index",
                  "ID:  ${drink["idDrink"]}",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  // "Index $index",
                  "${drink["strDrink"]}",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
