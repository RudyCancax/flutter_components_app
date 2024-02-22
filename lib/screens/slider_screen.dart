import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 20;
  double cupertinoSliderValue = 50;
  bool sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider, checks & switch')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 5),
          Text("ACTUAL VALUE: ",
              style: TextStyle(color: AppTheme.primaryColor, fontSize: 30)),
          Text(sliderValue.toInt().toString(),
              style: TextStyle(
                  color: AppTheme.primaryColor,
                  fontSize: 50,
                  fontWeight: FontWeight.w600)),
          Slider.adaptive(
            max: 100,
            min: 0,
            value: sliderValue,
            onChanged: (value) {
              sliderValue = value;
              setState(() {});
            },
            activeColor: AppTheme.primaryColor,
          ),
          CupertinoSlider(
            max: 100,
            min: 0,
            value: cupertinoSliderValue,
            onChanged: sliderEnabled
                ? (value) {
                    cupertinoSliderValue = value;
                    setState(() {});
                  }
                : null,
            activeColor: AppTheme.primaryColor,
          ),
          Text(cupertinoSliderValue.toInt().toString()),
          Container(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text("Enable img slider: "),
            Checkbox(
              checkColor: AppTheme.appPrimaryTextColor,
              value: sliderEnabled,
              onChanged: (value) {
                sliderEnabled = value!;
                setState(() {});
              },
            )
          ]),
          CheckboxListTile(
            title: const Text("Enable"),
            checkColor: AppTheme.appPrimaryTextColor,
            value: sliderEnabled,
            onChanged: (value) {
              sliderEnabled = value!;
              setState(() {});
            },
          ),
          SwitchListTile(
            title: const Text("Enable slider"),
            activeColor: AppTheme.primaryColor,
            value: sliderEnabled,
            onChanged: (value) {
              sliderEnabled = value!;
              setState(() {});
            },
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Image(
                    width: cupertinoSliderValue + 200,
                    fit: BoxFit.cover,
                    image: const NetworkImage(
                        "https://w7.pngwing.com/pngs/638/1004/png-transparent-ultimate-spider-man-comic-book-marvel-comics-ultimate-marvel-spider-man-ultimate-spider-man-comic-book-marvel-comics.png"))),
          ),
          Container(
            height: 20,
          ),
        ],
      ),
    );
  }
}
