import 'package:flutter/material.dart';
import 'package:lets_cook/components/main_drawer.dart';
import 'package:lets_cook/models/settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final Settings settings = Settings.empty();

  Widget _createSwitch({
    required String title,
    required String subtitle,
    bool value = false,
    Function(bool)? onChanged,
  }) {
    return SwitchListTile.adaptive(
      value: value,
      title: Text(title),
      subtitle: Text(subtitle),
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Settings, build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Options',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  title: 'Gluten Free',
                  subtitle: 'Just gluten free',
                  value: settings.isGlutenFree,
                  onChanged: (value) =>
                      setState(() => settings.isGlutenFree = value),
                ),
                _createSwitch(
                  title: 'Lactose Free',
                  subtitle: 'Just lactose free',
                  value: settings.isLactoseFree,
                  onChanged: (value) =>
                      setState(() => settings.isLactoseFree = value),
                ),
                _createSwitch(
                  title: 'Vegan',
                  subtitle: 'A lot of sadness 😥.',
                  value: settings.isVegan,
                  onChanged: (value) =>
                      setState(() => settings.isVegan = value),
                ),
                _createSwitch(
                  title: 'Vegetarian',
                  subtitle: 'It\'s also sad.',
                  value: settings.isVegetarian,
                  onChanged: (value) =>
                      setState(() => settings.isVegetarian = value),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
