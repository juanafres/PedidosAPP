class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Meal({
      this.id,
      this.categories,
      this.title,
      this.imageUrl,
      this.ingredients,
      this.steps,
      this.duration,
      this.complexity,
      this.affordability,
      this.isGlutenFree,
      this.isVegan,
      this.isVegetarian,
      this.isLactoseFree});
}

enum Complexity { Hard, Challenging, Simple }
enum Affordability { Affordable, Pricey, Luxurious }
