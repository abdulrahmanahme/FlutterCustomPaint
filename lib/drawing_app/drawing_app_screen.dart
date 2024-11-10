import 'package:flutter/material.dart';

class DrawingAppScreen extends StatefulWidget {
  const DrawingAppScreen({super.key});

  @override
  State<DrawingAppScreen> createState() => _DrawingAppScreenState();
}

class _DrawingAppScreenState extends State<DrawingAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanStart: (onPanStart) {},
        onPanUpdate: (onPanUpdate) {},
        onPanEnd: (onPanUpdate) {},
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
