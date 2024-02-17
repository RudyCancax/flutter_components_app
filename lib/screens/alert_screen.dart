import 'package:flutter/material.dart';
import 'package:components_app/theme/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AlertScreen'),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                const AlertDialog(
                  actions: [Text("heyouuu")],
                );
              },
              child: const Text('Display alert')),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close,
              color: AppTheme.appPrimaryTextColor,
            )));
  }
}
