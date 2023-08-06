import 'package:flutter/material.dart';

import 'package:vamos_cozinhar/screens/meal_recipe_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'screens/settings_screen.dart';

import 'utils/app_routes.dart';

import 'models/meal.dart';
import 'package:vamos_cozinhar/models/settings.dart';
import 'data/dummy_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Settings settings = Settings();
  List<Meal> _availableMeals = dummyMeals;
  List<Meal> _favoriteMeals = [];

  void _applySettings(Settings settings) {
    setState(() {
      this.settings = settings;

      _availableMeals = dummyMeals.where((meal) {
        final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVegan && !meal.isVegan;
        final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;

        return !filterGluten &&
            !filterLactose &&
            !filterVegan &&
            !filterVegetarian;
      }).toList();
    });
  }

  void _toggleFavorite(Meal meal) {
    setState(() {
      _favoriteMeals.contains(meal)
          ? _favoriteMeals.remove(meal)
          : _favoriteMeals.add(meal);
    });
  }

  bool _isFavorite(Meal meal) {
    return _favoriteMeals.contains(meal);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        canvasColor: Color.fromRGBO(255, 254, 229, 1), //Cor da tela
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge:
                  const TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'),
            ),
      ),
      routes: {
        //Estabelecendo rotas
        AppRoutes.HOME: (ctx) => TabsScreen(_favoriteMeals), //Home -> /
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(_availableMeals),
        AppRoutes.MEAL_RECIPE: (ctx) => MealRecipeScreen(_toggleFavorite, _isFavorite),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(_applySettings, settings),
      },
      // onGenerateRoute: (settings) { -> Criando rotas dinamicas baseada no nome da rota
      //   if(settings.name == '/alguma-coisa') {
      //     return null;
      //   } else {
      //     return MaterialPageRoute(builder: (_) => CategoriesScreen());
      //   }
      // },

      onUnknownRoute: ((settings) {
        //Cria uma rota caso não exista uma rota definida em routes (acima)
        return MaterialPageRoute(builder: (_) => CategoriesScreen());
      }),
    );
  }
}
