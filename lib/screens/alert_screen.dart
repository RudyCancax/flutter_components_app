import 'package:flutter/material.dart';
import 'package:components_app/theme/app_theme.dart';
import 'package:components_app/widgets/widgets.dart';

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
                showDialog(
                  barrierDismissible:
                      false, // Disable the option to close the alert outside it
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      elevation: 5,
                      content: const CustomCardImage1(
                          imageSource:
                              "https://photographylife.com/wp-content/uploads/2022/01/HDR-with-Flat-Light-and-Bad-Colors.jpg",
                          displayButtons: true),
                      title: const Text("Alert dialog title"),
                      contentPadding: EdgeInsets.zero,
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("ACTION BUTTON"))
                      ],
                    );
                  },
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
