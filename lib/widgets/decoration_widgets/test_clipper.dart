import 'package:flutter/material.dart';

class TestClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double x = size.width;
    double y = size.height;
    return path
      ..addPolygon([const Offset(0, 0), Offset(0, y), Offset(x, y)], true)
      ..lineTo(x / 2, y / 2);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
