import 'package:flutter/material.dart';

class MenuOption {
  final String route;
  final String title;
  final Widget screen;
  final IconData icon;

  MenuOption(this.route, this.title, this.screen, this.icon);
}
