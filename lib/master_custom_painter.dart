import 'package:flutter/material.dart';

class MasterCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 3;
    paint.color = Colors.black;

    /// Draw a line
    // canvas.drawLine(Offset.zero, Offset(size.width,0), paint);

    /// Draw a circle
    paint.style = PaintingStyle.stroke;
    canvas.drawCircle(Offset(size.width / 2, size.width / 2), 40, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
