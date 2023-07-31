enum Complexity { //Enumeração
  simple,
  medium,
  difficult,
}

enum Cost {
  cheap,
  fair,
  expensive,
}


class Meal {
  final String id;
  final List<String> categories; //Uma comida em mais de uma categoria
  final String title;
  final Complexity complexity;
  final Cost cost;
  final String imageUrl;

  final List<String> ingredients;
  final List<String> steps; //Passos para fazer a comida
  final int duration;

  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;


  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.complexity,
    required this.cost,
  });
}