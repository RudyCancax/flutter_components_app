import 'package:flutter/material.dart';
import 'package:components_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listview2': (context) => const ListViewScreen2(),
    'listview': (context) => const ListViewScreen(),
  };
}
