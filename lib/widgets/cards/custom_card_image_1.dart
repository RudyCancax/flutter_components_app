import 'package:flutter/material.dart';
import 'package:components_app/theme/app_theme.dart';

class CustomCardImage1 extends StatelessWidget {
  final String imageSource;
  final bool displayButtons;
  final String? imageName;

  const CustomCardImage1({
    super.key,
    required this.imageSource,
    required this.displayButtons,
    this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 30,
      shadowColor: AppTheme.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (imageName != null)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(imageName!,
                  style: TextStyle(
                      color: AppTheme.appPrimaryTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w400)),
            ),
          FadeInImage(
            placeholder: const AssetImage("assets/imgs/jar-loading.gif"),
            image: NetworkImage(imageSource),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 230,
          ),
          if (displayButtons)
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: const Text('OK')),
                  TextButton(onPressed: () {}, child: const Text('Cancelar')),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cerrar Alerta')),
                ],
              ),
            )
        ],
      ),
    );
  }
}
