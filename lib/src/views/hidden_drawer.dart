import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:mealfit/src/views/login_sceen.dart';
import 'package:mealfit/src/views/meals_home.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _MealsHomeState();
}

class _MealsHomeState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myStectStyle = const TextStyle(
      fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white);

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Meals',
          baseStyle: myStectStyle,
          selectedStyle: myStectStyle,
        ),
        const MealsHome(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Alimentos',
          baseStyle: myStectStyle,
          selectedStyle: myStectStyle,
        ),
        const MealsHome(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      initPositionSelected: 0,
      backgroundColorMenu: Color.fromARGB(255, 152, 110, 224),
    );
  }
}
