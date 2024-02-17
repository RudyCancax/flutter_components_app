import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardImage2 extends StatelessWidget {
  final String imagesource;

  const CustomCardImage2({super.key, required this.imagesource});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      elevation: 30,
      shadowColor: AppTheme.primaryColor.withOpacity(0.6),
      child: FadeInImage(
          placeholder: const AssetImage('assets/imgs/jar-loading.gif'),
          image: NetworkImage(imagesource),
          height: 120),
    );
  }
}
