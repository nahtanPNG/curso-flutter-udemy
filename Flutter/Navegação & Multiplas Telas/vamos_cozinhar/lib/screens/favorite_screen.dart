import 'package:flutter/material.dart';
import 'package:vamos_cozinhar/widgets/meal_item.dart';

import '../models/meal.dart';

class FavoriteScren extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavoriteScren(this.favoriteMeals, {super.key});

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('Favoritos'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeals[index]);
        },
        
      );
    }
  }
}
