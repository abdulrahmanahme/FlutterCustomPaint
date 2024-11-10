import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';

class DrawingAppScreen extends StatefulWidget {
  const DrawingAppScreen({super.key});

  @override
  State<DrawingAppScreen> createState() => _DrawingAppScreenState();
}

class _DrawingAppScreenState extends State<DrawingAppScreen> {
  final _offset = <Offset>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanStart: (details) {
          log('onPanStart : ${details}');
          
        },
        onPanUpdate: (details) {
          log('onPanUpdate : ${details}');
         setState(() {
          _offset.add(details.globalPosition);
            
          });
        },
        onPanEnd: (details) {
          log('onPanEnd : ${details}');
          setState(() {
          _offset.add(details.globalPosition);
            
          });
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.red[50],
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
  DrawingCustomPainter({required this.offset});
  final offset;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.strokeWidth = 3;
    paint..color=Colors.black;
    
    
    for (var offsets in offset) {
      canvas.drawPoints(PointMode.points, [offsets], paint);
      // canvas.drawLine(offsets, offsets, paint);

    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
