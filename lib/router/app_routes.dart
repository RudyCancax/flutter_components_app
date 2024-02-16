import 'package:flutter/material.dart';
import 'package:components_app/models/models.dart';
import 'package:components_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>{
    MenuOption('home', "Home Screen", const HomeScreen(), Icons.home),
    MenuOption('listview2', "List View 2", const ListViewScreen2(), Icons.list),
    MenuOption(
        'listview', "List View", const ListViewScreen(), Icons.list_sharp),
    MenuOption('alert', 'Alert Screen', const AlertScreen(), Icons.add_alert),
    MenuOption('card', 'Card Screen', const CardScreen(), Icons.card_giftcard),
  };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview2': (context) => const ListViewScreen2(),
  //   'listview': (context) => const ListViewScreen(),
  // };
}
