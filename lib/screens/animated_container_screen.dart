import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  final double _width = 100;
  double _heigth = 80;
  final Color _color = Colors.amber;
  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void changeShape() {
    _heigth += 30;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainerScreen')),
      body: Center(
          child: Container(
        width: _width,
        height: _heigth,
        decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
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
