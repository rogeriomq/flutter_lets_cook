import 'package:flutter/material.dart';
import 'package:lets_cook/app_routes.dart';
import 'package:lets_cook/pages/categories_meals_page.dart';
import 'package:lets_cook/pages/meal_detail_page.dart';
import 'package:lets_cook/pages/tabs_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      primarySwatch: Colors.pink,
      fontFamily: 'Raleway',
      canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      textTheme: ThemeData.light().textTheme.copyWith(
            headline6: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            ),
          ),
      // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
      //     .copyWith(secondary: Colors.amber),
    );
    return MaterialApp(
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(secondary: Colors.amber)),
      initialRoute: AppRoutes.HOME,
      routes: {
        AppRoutes.HOME: (context) => const TabsPage(),
        AppRoutes.CATEGORY_MEALS: (context) => const CategoriesMealsPage(),
        AppRoutes.MEAL_DETAIL: (context) => const MealDetailPage()
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) {
          return const TabsPage();
        });
      },
    );
  }
}
