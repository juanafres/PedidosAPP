import 'package:flutter/material.dart';
import 'package:meal_app/ui/filters/filter_screen.dart';
import 'package:meal_app/ui/main/tabs_screen.dart';
import 'package:meal_app/ui/mealDetail/meal_detail_screen.dart';
import 'package:meal_app/ui/meals/meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline5: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        '/': (context) => TabsScreen(),
        MealsScreen.ROUT: (context) => MealsScreen(),
        MealDetailScreen.ROUT: (context) => MealDetailScreen(),
        FiltersScreen.ROUT: (context) => FiltersScreen(),
      },
    );
  }
}
