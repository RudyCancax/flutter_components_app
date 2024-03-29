import 'package:flutter/material.dart';

class ListViewScreen2 extends StatelessWidget {
  final itemsMenu = const ['1', '2', '3'];

  const ListViewScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List View"),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(itemsMenu[index]),
                  trailing: const Icon(Icons.ac_unit),
                  leading: const Icon(Icons.access_alarm_outlined),
                  onTap: () =>
                      AlertDialog(title: Text("Tapped ${itemsMenu[index]}")),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: itemsMenu.length));
  }
}
