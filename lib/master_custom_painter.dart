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
    // paint.style = PaintingStyle.stroke;
    // canvas.drawCircle(Offset(size.width / 2, size.width / 2), 40, paint);

    /// Draw a Rectangle

    // paint.style = PaintingStyle.stroke;

    // Offset center = Offset(size.width / 2, size.width / 2);
    // // canvas.drawRect(
    // //     Rect.fromCenter(center: center, width: 100, height: 100), paint);

    // canvas.drawRect(Rect.fromCircle(center: center, radius: 20), paint);

    // canvas.drawRect(const Rect.fromLTWH(10, 50, 20, 200), paint);
    // canvas.drawRect(const Rect.fromLTWH(94, 60, 20, 200), paint);

    /// Draw a Oval
    
    paint.style = PaintingStyle.stroke;
  
    Offset center = Offset(size.width / 2, size.width / 2);
    
    canvas.drawOval(Rect.fromCircle(center: center, radius: 20), paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
