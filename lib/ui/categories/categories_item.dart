import 'package:flutter/material.dart';
import 'package:meal_app/model/category.dart';
import 'package:meal_app/ui/meals/meals_screen.dart';

class CategoriesItem extends StatelessWidget {
  final Category _category;

  CategoriesItem(this._category);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateToMealsScreen(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.all(Radius.circular(15)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              _category.color.withOpacity(0.7),
              _category.color,
            ]),
            borderRadius: const BorderRadius.all(Radius.circular(8.0))),
        child: Text(
          _category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        padding: const EdgeInsets.all(15),
      ),
    );
  }

  void navigateToMealsScreen(BuildContext context) {
    Navigator.of(context).pushNamed(MealsScreen.ROUT, arguments: _category);
  }
}
