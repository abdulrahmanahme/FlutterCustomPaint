
import 'package:flutter/material.dart';

class MasterCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =Paint();
    paint.strokeWidth=8;
    paint.color=Colors.black;

    canvas.drawLine(Offset.zero, Offset(size.width,0), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}