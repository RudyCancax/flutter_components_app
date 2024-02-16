import 'package:flutter/material.dart';

import 'package:components_app/screens/list_view_screen2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ListViewScreen2());
  }
}
