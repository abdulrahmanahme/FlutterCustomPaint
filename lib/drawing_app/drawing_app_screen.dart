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
          color: Colors.red[50],
          child: CustomPaint(
            painter: DrawingCustomPainter(),
            size: Size(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height),
          ),
        ),
      ),
    );
  }
}

class DrawingCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
