import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MasterCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    // paint.strokeWidth = 3;
    // paint.color = Colors.black;

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

    // paint.style = PaintingStyle.stroke;

    // Offset center = Offset(size.width / 2, size.width / 2);

    // canvas.drawOval(Rect.fromCircle(center: center, radius: 20), paint);
    /// Ract radius
    // Rect rac = Rect.fromLTRB(10, 20, 50, 6);
    // Rect rac2 = Rect.fromLTRB(30, 70, 60, 11);
    // Rect rac3 = Rect.fromLTRB(74, 66, 2, 99);
    // Rect rac4 = Rect.fromLTRB(6, 10, 7, 3);

    // canvas.drawRRect(
    //     RRect.fromRectAndRadius(rac, const Radius.circular(25)), paint);

    // /// Ract give ract for corners
    // canvas.drawRRect(
    //     RRect.fromRectAndCorners(rac2,
    //         topLeft: const Radius.circular(5),
    //         bottomRight: const Radius.circular(5)),
    //     paint);

    // canvas.drawRRect(RRect.fromRectXY(rac3, 20, 30), paint);

    // /// Draw difference of two rectangles with rounded corners
    // RRect rac6 = RRect.fromRectAndCorners(
    //   rac2,
    //   topLeft: const Radius.circular(20),
    //   bottomRight: const Radius.circular(15),
    // );

    //  RRect rac5 = RRect.fromRectAndCorners(
    //   rac2,
    //   topLeft: const Radius.circular(7),
    //   bottomRight: const Radius.circular(9),
    // );

    // canvas.drawDRRect(rac6, rac5, paint);

    // ///Fill canvas with a solid color
    // canvas.drawColor(Colors.green, BlendMode.dstIn);

    // Gradient as a canvas background
    paint.strokeWidth = 3;
    paint.color = Colors.black;
    paint.shader = ui.Gradient.linear(Offset(size.width / 2, 0),
        Offset(size.width / 2, size.height), [Colors.green, Colors.red]);


     Rect rac = Rect.fromLTRB(10, 20, 50, 6);

    // canvas.clipPath(Path());
    canvas.clipRect(Offset.zero&size);
    canvas.drawPaint(paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
