import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final itemsMenu = const ['1', '2', '3'];

  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text("List View"))),
        body: ListView(
          children: [
            ...itemsMenu
                .map(
                  (e) => ListTile(
                    title: Text(e),
                    leading: const Icon(Icons.ac_unit),
                    trailing: const Icon(Icons.forward),
                  ),
                )
                .toList()
          ],
        ));
  }
}
