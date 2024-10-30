import 'package:custom_paint/master_custom_painter.dart';
import 'package:flutter/material.dart';

class CustomPaintScreen extends StatelessWidget {
  const CustomPaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Custom Paint',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: CustomPaint(
          painter: MasterCustomPainter(),
          size: const Size(300, 300),
        ),
      ),
    );
  }
}
