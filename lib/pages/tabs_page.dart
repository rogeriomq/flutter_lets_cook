import 'package:flutter/material.dart';
import 'package:lets_cook/pages/categories_page.dart';
import 'package:lets_cook/pages/favorite_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  final tabBar = const TabBar(
    tabs: [
      Tab(
        icon: Icon(Icons.category),
        text: 'Categories',
      ),
      Tab(
        icon: Icon(Icons.star),
        text: 'Favorites',
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Let\'s cook'),
          // bottom: tabBar,
        ),
        body: const TabBarView(
          children: [
            CategoriesPage(),
            FavoritePage(),
          ],
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            color: Theme.of(context).primaryColor,
            child: tabBar,
          ),
        ),
      ),
    );
  }
}
