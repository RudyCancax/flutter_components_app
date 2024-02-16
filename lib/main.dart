import 'package:flutter/material.dart';

import 'package:components_app/router/app_routes.dart';
import 'package:components_app/screens/screens.dart';

// import 'package:components_app/screens/card_screen.dart';
// import 'package:components_app/screens/list_view_screen.dart';
// import 'package:components_app/screens/list_view_screen2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.routes);
  }
}
