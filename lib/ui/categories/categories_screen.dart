import 'package:flutter/material.dart';
import 'package:meal_app/ui/categories/categories_item.dart';
import 'package:meal_app/utils/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(20),
      itemCount: DUMMY_CATEGORIES.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        maxCrossAxisExtent: 300,
      ),
      itemBuilder: (context, index) {
        return CategoriesItem(DUMMY_CATEGORIES[index]);
      },
    );
  }
}
