import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("List View")),
        body: ListView(
          children: const [
            Text("Hello List view!!!"),
            Text("Hello List view2!!!")
          ],
        ));
  }
}
