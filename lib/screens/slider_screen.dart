import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("ACTUAL VALUE: ",
              style: TextStyle(color: AppTheme.primaryColor, fontSize: 30)),
          Text(sliderValue.toInt().toString(),
              style: TextStyle(
                  color: AppTheme.primaryColor,
                  fontSize: 50,
                  fontWeight: FontWeight.w600)),
          Slider(
            max: 100,
            min: 0,
            value: sliderValue,
            onChanged: (value) {
              sliderValue = value;
              setState(() {});
            },
            activeColor: AppTheme.primaryColor,
          )
        ],
      ),
    );
  }
}
