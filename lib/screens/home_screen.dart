import 'package:flutter/material.dart';
import 'package:components_app/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
          centerTitle: true,
        ),
        extendBodyBehindAppBar: true,
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(AppRoutes.menuOptions.elementAt(index).title),
                  leading: Icon(menuOptions.elementAt(index).icon),
                  trailing: const Icon(Icons.navigate_next_rounded),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions.elementAt(index).route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
