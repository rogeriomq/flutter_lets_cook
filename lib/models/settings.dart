// ignore_for_file: public_member_api_docs, sort_constructors_first
class Settings {
  bool isGlutenFree = false;
  bool isLactoseFree = false;
  bool isVegan = false;
  bool isVegetarian = false;

  Settings({
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
  });

  Settings.empty();
}
