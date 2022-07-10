import 'package:flutter/material.dart';
import 'package:lets_cook/app_routes.dart';
import 'package:lets_cook/pages/categories_meals_page.dart';
import 'package:lets_cook/pages/categories_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      fontFamily: 'Raleway',
      canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      textTheme: ThemeData.light().textTheme.copyWith(
            headline6: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            ),
          ),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
          .copyWith(secondary: Colors.amber),
    );
    return MaterialApp(
      theme: theme,
      initialRoute: AppRoutes.HOME,
      routes: {
        AppRoutes.HOME: (context) => const CategoriesPage(),
        AppRoutes.CATEGORY_MEALS: (context) => const CategoriesMealsPage()
      },
    );
  }
}
