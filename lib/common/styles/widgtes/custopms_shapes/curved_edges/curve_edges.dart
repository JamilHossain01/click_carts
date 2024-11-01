import 'package:flutter/material.dart';

class TCustomCurveEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Starting point (top-left corner)
    path.lineTo(0, size.height);

    // First curve
    final firstControlPoint = Offset(0, size.height - 20);
    final firstEndPoint = Offset(30, size.height - 20);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    // Second curve
    final secondControlPoint = Offset(0, size.height - 20);
    final secondEndPoint = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    final thirdControlPoint = Offset(size.width, size.height - 20);
    final thirdEndPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    // Draw to the bottom-right corner
    path.lineTo(size.width, 0);

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
