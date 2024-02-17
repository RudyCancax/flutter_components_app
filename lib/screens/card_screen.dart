import 'package:flutter/material.dart';
import 'package:components_app/widgets/widgets.dart';

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
              horizontal: 30, vertical: 20),
          children: const [CustomCardImage1(), CustomCardImage2()],
        ));
  }
}
