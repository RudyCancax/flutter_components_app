import 'package:flutter/material.dart';
import 'package:components_app/theme/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CardScreen'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 50, vertical: 20),
          children: [
            Card(
              elevation: 10.0,
              color: AppTheme.primaryColor,
              child: const Column(children: [
                Text("My card"),
                Image(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/3330895/pexels-photo-3330895.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
                Text("My card")
              ]),
            ),
          ],
        ));
  }
}
