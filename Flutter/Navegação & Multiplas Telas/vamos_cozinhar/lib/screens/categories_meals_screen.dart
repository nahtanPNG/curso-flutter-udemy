import 'package:flutter/material.dart';
import 'package:vamos_cozinhar/widgets/meal_item.dart';

import '../models/category.dart';
import '../models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {

  final List<Meal> meals; //Recebe uma lista com parametro que é passado pelo Main.dart para filtrar as refeições

  const CategoriesMealsScreen(this.meals);


  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments
        as Category; //Pegando os argumentos da rota nomeada definida no category_item

    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        },
      ),
    );
  }
}
