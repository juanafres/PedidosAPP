import 'package:flutter/material.dart';
import 'package:meal_app/model/meal.dart';

class MealDetailScreen extends StatelessWidget {
  static const String ROUT = '/MealDetailScreen';
  Meal _meal;

  Widget buildTitleText(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget buildConainer(ListView child) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    _meal = ModalRoute.of(context).settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(_meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              width: double.infinity,
              child: Image.network(
                _meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildTitleText(context, "Ingredients"),
            buildConainer(
              ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      _meal.ingredients[index],
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  );
                },
                itemCount: _meal.ingredients.length,
              ),
            ),
            buildTitleText(context, "Steps"),
            buildConainer(
              ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          child: Text(
                            '# ${index + 1}',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        title: Text(
                          _meal.steps[index],
                        ),
                      ),
                      Divider(),
                    ],
                  );
                },
                itemCount: _meal.steps.length,
                scrollDirection: Axis.vertical,
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
