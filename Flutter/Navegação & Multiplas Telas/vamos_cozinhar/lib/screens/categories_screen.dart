import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vamos Cozinhar?'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent( //Area que possui um scroll com uma grid 
          maxCrossAxisExtent: 200, //Cada elemento tem uma extensão de no máximo 200px
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20, 
          mainAxisSpacing: 20,
        ),
        children: dummyCategories.map((cat) {
          return CategoryItem(cat);
        }).toList(),
      ),
    );
  }
}