import 'package:flutter/material.dart';
import 'package:components_app/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
          backgroundColor: Colors.indigo,
          centerTitle: true,
          toolbarHeight: 50,
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
        ),
        extendBodyBehindAppBar: true,
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(AppRoutes.menuOptions.elementAt(index).title),
                  leading: Icon(AppRoutes.menuOptions.elementAt(index).icon),
                  trailing: const Icon(Icons.navigate_next_rounded),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions.elementAt(index).route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
