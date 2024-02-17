import 'package:flutter/material.dart';
import 'package:components_app/theme/app_theme.dart';

class CustomCardImage1 extends StatelessWidget {
  const CustomCardImage1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      color: AppTheme.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Card with URL Image",
                style: TextStyle(
                    color: AppTheme.appPrimaryTextColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w400)),
          ),
          const Image(
              image: NetworkImage(
                  "https://images.pexels.com/photos/3330895/pexels-photo-3330895.jpeg")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('OK')),
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
