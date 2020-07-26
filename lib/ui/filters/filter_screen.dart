import 'package:flutter/material.dart';
import 'package:meal_app/ui/main/drawer_main.dart';

class FiltersScreen extends StatefulWidget {
  static const String ROUT = '/FiltersScreen';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _isGlutenFree = false;
  var _isVegan = false;
  var _isVegetarian = false;
  var _isLactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      drawer: DrawerMain(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your filters here',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                buildSwitchListTile('Gluten Free',
                    'Choose meals that is gluten free', _isGlutenFree, (value) {
                  setState(() {
                    _isGlutenFree = value;
                  });
                }),
                buildSwitchListTile(
                    'Vegan', 'Choose meals that is vegan', _isVegan, (value) {
                  setState(() {
                    _isVegan = value;
                  });
                }),
                buildSwitchListTile('Vegetarian',
                    'Choose meals that is vegetarian', _isVegetarian, (value) {
                  setState(() {
                    _isVegetarian = value;
                  });
                }),
                buildSwitchListTile(
                    'Lactose Free',
                    'Choose meals that is lactose free',
                    _isLactoseFree, (value) {
                  setState(() {
                    _isLactoseFree = value;
                  });
                }),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildSwitchListTile(
      String title, String description, bool currentValue, Function onChange) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(description),
      value: currentValue,
      onChanged: (value) {
        onChange(value);
      },
    );
  }
}
