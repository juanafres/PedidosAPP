import 'package:flutter/material.dart';
import 'package:meal_app/model/category.dart';
import 'package:meal_app/ui/meals/meal_item.dart';
import 'package:meal_app/utils/dummy_data.dart';

class MealsScreen extends StatelessWidget {
  static const String ROUT = '/MealsScreen';
  Category _category;

  @override
  Widget build(BuildContext context) {
    _category = ModalRoute.of(context).settings.arguments as Category;
    var meals = DUMMY_MEALS
        .where((element) => element.categories.contains(_category.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(_category.title),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(meals[index]);
          },
          itemCount: meals.length,
        ),
      ),
    );
  }
}
