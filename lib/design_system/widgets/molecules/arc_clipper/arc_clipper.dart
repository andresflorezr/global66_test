import 'package:flutter/material.dart';

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Start curve from 35% of the height
    path.lineTo(0, size.height * 0.5);

    // Create a symmetric deep curve to the bottom center
    path.quadraticBezierTo(
      size.width / 2, // Control point x
      size.height, // Control point y (at the very bottom)
      size.width, // End point x
      size.height * 0.5, // End point y
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}