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
          children: const [
            CustomCardImage2(
              imagesource:
                  'https://images.pexels.com/photos/3330895/pexels-photo-3330895.jpeg',
            ),
            SizedBox(height: 20),
            CustomCardImage1(
              displayButtons: false,
              imageSource:
                  'https://photographylife.com/wp-content/uploads/2022/01/HDR-with-Flat-Light-and-Bad-Colors.jpg',
            ),
            SizedBox(height: 20),
            CustomCardImage1(
                displayButtons: true,
                imageName: 'Raining day!! ⛈️',
                imageSource:
                    'https://photographylife.com/wp-content/uploads/2019/06/Nikon-Z-14-30mm-f4-S-Sample-Photo-16.jpg')
          ],
        ));
  }
}
