import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _width = 100;
  double _heigth = 80;
  Color _color = Colors.amber;
  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void changeShape() {
    _heigth = Random().nextInt(200).toDouble() + 50;
    _width = Random().nextInt(200).toDouble() + 50;
    _color = Color.fromRGBO(
        Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainerScreen')),
      body: Center(
          // child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("H: $_heigth --- "), Text("W: $_width")],
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOutCubic,
            width: _width,
            height: _heigth,
            decoration:
                BoxDecoration(borderRadius: _borderRadius, color: _color),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeShape();
          },
          child: const Icon(
            Icons.play_arrow,
            color: Colors.white,
          )),
    );
  }
}
