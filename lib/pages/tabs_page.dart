import 'package:flutter/material.dart';
import 'package:lets_cook/pages/categories_page.dart';
import 'package:lets_cook/pages/favorite_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedPageIndex = 0;

  final List<Widget> _pages = [
    const CategoriesPage(),
    const FavoritePage(),
  ];

  final List _titles = ['Categories', 'Favorites'];

  void _selectScreen(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
    debugPrint('$index');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedPageIndex]),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        showSelectedLabels: true,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Categories',
            tooltip: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
            tooltip: 'Favorites',
          ),
        ],
      ),
    );
  }
}
