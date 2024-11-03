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
      body: Stack(
        children: [
          // Center(
          //   child: Container(
          //     color: Colors.grey,
          //     child: CustomPaint(
          //       painter: MasterCustomPainter(),
          //       size: const Size(300, 400),
          //     ),
          //   ),
          // ),
          ClipPath(
            clipper: ContainerCustomClipper(),
            child: Container(
              height: 120,
              width: double.infinity,
              color: Colors.red.withOpacity(.8),
            ),
          ),
          ClipPath(
            clipper: ContainerCustomClipper(),
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerCustomClipper extends CustomClipper<Path> {
  var path = Path();
  @override
  Path getClip(Size size) {
    path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, 0);
    path.quadraticBezierTo(size.width*.25, size.height -100, size.width *.5, size.height-50);
    path.quadraticBezierTo(size.width*.8, size.height, size.width, size.height);

    path.lineTo(size.width, 0);


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
