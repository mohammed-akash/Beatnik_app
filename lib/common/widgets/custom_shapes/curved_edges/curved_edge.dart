import 'package:flutter/material.dart';

class BeatnikCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Start from the top left corner
    path.lineTo(0, size.height);

    // First curve (bottom-left)
    final firstControlPoint = Offset(size.width * 0.15, size.height);
    final firstEndPoint = Offset(size.width * 0.3, size.height - 30);
    path.quadraticBezierTo(
      firstControlPoint.dx, firstControlPoint.dy,
      firstEndPoint.dx, firstEndPoint.dy,
    );

    // Second curve (bottom-center)
    final secondControlPoint = Offset(size.width * 0.5, size.height - 60);
    final secondEndPoint = Offset(size.width * 0.7, size.height - 30);
    path.quadraticBezierTo(
      secondControlPoint.dx, secondControlPoint.dy,
      secondEndPoint.dx, secondEndPoint.dy,
    );

    // Third curve (bottom-right)
    final thirdControlPoint = Offset(size.width * 0.85, size.height);
    final thirdEndPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
      thirdControlPoint.dx, thirdControlPoint.dy,
      thirdEndPoint.dx, thirdEndPoint.dy,
    );

    // Draw line to the top right corner
    path.lineTo(size.width, 0);

    // Close the path to complete the shape
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // Reclip only if necessary
  }
}
