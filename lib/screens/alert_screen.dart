import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar',
                      style: TextStyle(color: Colors.red))),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Ok',
                      style: TextStyle(color: AppTheme.primaryColor))),
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Ok',
                      style: TextStyle(color: AppTheme.primaryColor))),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Text('Android Alert', style: TextStyle(fontSize: 14)),
                ),
                //  onPressed: () => displayDialogAndroid( context )
                onPressed: () => displayDialogAndroid(context)),
            ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Text('iOS Alert', style: TextStyle(fontSize: 14)),
                ),
                onPressed: () => displayDialogIOS(context)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.close, color: AppTheme.appPrimaryTextColor),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
