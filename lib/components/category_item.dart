import 'package:flutter/material.dart';
import 'package:lets_cook/app_routes.dart';
import 'package:lets_cook/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  void _goToCategoryMeals(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORY_MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeOf = Theme.of(context);
    final borderRadius = BorderRadius.circular(15);

    return InkWell(
      onTap: () => _goToCategoryMeals(context),
      borderRadius: borderRadius,
      splashColor: themeOf.primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: themeOf.textTheme.headline6,
        ),
      ),
    );
  }
}
