import 'package:flutter/material.dart';
import 'package:lets_cook/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _createItem({
    required IconData icon,
    required String label,
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeOf = Theme.of(context);
    final navigatorOf = Navigator.of(context);

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: themeOf.colorScheme.secondary,
              height: 80,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                'Let\'s Cook?',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: themeOf.primaryColor,
                ),
              ),
            ),
            const SizedBox(height: 15),
            _createItem(
                icon: Icons.restaurant,
                label: 'Meals',
                onTap: () => navigatorOf.pushReplacementNamed(AppRoutes.HOME)),
            const Divider(),
            _createItem(
                icon: Icons.settings,
                label: 'Settings',
                onTap: () =>
                    navigatorOf.pushReplacementNamed(AppRoutes.SETTINGS)),
          ],
        ),
      ),
    );
  }
}
