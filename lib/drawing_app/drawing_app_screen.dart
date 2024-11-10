import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';

class DrawingAppScreen extends StatefulWidget {
  const DrawingAppScreen({super.key});

  @override
  State<DrawingAppScreen> createState() => _DrawingAppScreenState();
}

class _DrawingAppScreenState extends State<DrawingAppScreen> {
  final _offset = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanStart: (details) {
          setState(() {
            _offset.add(details.globalPosition);
          });
        },
        onPanUpdate: (details) {
          setState(() {
            _offset.add(details.globalPosition);
          });
        },
        onPanEnd: (details) {
          setState(() {
            _offset.add(null);
          });
        },
        child: Center(
          child: CustomPaint(
            painter: DrawingCustomPainter(offset: _offset),
            size: Size(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height),
          ),
        ),
      ),
    );
  }
}

class DrawingCustomPainter extends CustomPainter {
  DrawingCustomPainter({required this.offset}) : super();
  final offset;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.strokeWidth = 4;
    paint..color = Colors.black;

    for (int i = 0; i < offset.length; i++) {
      if (offset[i] != null && offset[i + 1] != null) {
        canvas.drawLine(offset[i], offset[i + 1], paint);
      } else if (offset[i] != null && offset[i + 1] == null) {
        canvas.drawPoints(PointMode.points, [offset[i]], paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
