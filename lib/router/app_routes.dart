import 'package:flutter/material.dart';
import 'package:components_app/models/models.dart';
import 'package:components_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>{
    // MenuOption('home', "Home Screen", const HomeScreen(), Icons.home),
    // MenuOption('listview2', "List View 2", const ListViewScreen2(), Icons.list),
    // MenuOption(
    //     'listview', "List View", const ListViewScreen(), Icons.list_sharp),
    MenuOption('alert', 'Alert Screen', const AlertScreen(), Icons.add_alert),
    MenuOption(
        'card', 'Card Screen 1', const CardScreen(), Icons.card_giftcard),
    MenuOption('circle-avatar', "Circle Avatar", const CircleAvatarScreen(),
        Icons.supervised_user_circle_rounded),
    MenuOption('animated-container', 'Animated Cont.',
        const AnimatedContainerScreen(), Icons.check_box_outline_blank),
    MenuOption('inputs-screen', 'Inputs & Forms', const InputScreen(),
        Icons.input_rounded),
    MenuOption(
        'slide-screen', 'Slider & Checks', const SliderScreen(), Icons.photo),
    MenuOption('listview-builder', 'ListView Builder',
        const ListViewBuilderScreen(), Icons.list)
  };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // Normal way to generate a navigation Map to navigate
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview2': (context) => const ListViewScreen2(),
  //   'listview': (context) => const ListViewScreen(),
  // };
}
