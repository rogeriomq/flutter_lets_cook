import 'package:flutter/material.dart';
import 'package:lets_cook/models/category.dart';

class CategoriesMealsPage extends StatelessWidget {
  const CategoriesMealsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    return Scaffold(
        appBar: AppBar(
          title: Text(category.title),
        ),
        body: const Center(
          child: Text('Receitas por categoria'),
        ));
  }
}
