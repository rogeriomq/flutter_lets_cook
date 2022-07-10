import 'package:flutter/material.dart';
import 'package:lets_cook/components/main_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        drawer: const MainDrawer(),
        body: const Center(
          child: Text('Settings Page'),
        ));
  }
}
