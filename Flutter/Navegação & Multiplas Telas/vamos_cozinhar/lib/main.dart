import 'package:flutter/material.dart';

import 'screens/tabs_screen.dart';
import 'package:vamos_cozinhar/screens/meal_recipe_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        AppRoutes.HOME: (ctx) => TabsScreen(), //Home -> /
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_RECIPE: (ctx) => MealRecipeScreen(),
      },
      // onGenerateRoute: (settings) { -> Criando rotas dinamicas baseada no nome da rota
      //   if(settings.name == '/alguma-coisa') {
      //     return null;
      //   } else {
      //     return MaterialPageRoute(builder: (_) => CategoriesScreen());
      //   }
      // },

      onUnknownRoute: ((settings) { //Cria uma rota caso não exista uma rota definida em routes (acima)
        return MaterialPageRoute(builder: (_) => CategoriesScreen());
      }),
    );
  }
}
