import 'package:flutter/material.dart';
import 'package:meal_app/ui/categories/categories_screen.dart';
import 'package:meal_app/ui/favorite/favorite_screen.dart';
import 'package:meal_app/ui/main/drawer_main.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> items = [CategoriesScreen(), FavoriteScreen()];
  int selectedIndex = 0;

  void selectItem(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal App"),
      ),
      drawer: DrawerMain(),
      body: items[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectItem,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Category'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Favorite'),
          ),
        ],
      ),
    );
  }
}
