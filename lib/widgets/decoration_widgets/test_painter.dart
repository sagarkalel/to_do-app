import 'package:flutter/material.dart';

class TestPainter extends CustomPainter {
  const TestPainter({
    required this.borderRadius,
  });
  final double borderRadius;
  @override
  void paint(Canvas canvas, Size size) {
    double x = size.width;
    double y = size.height;
    Paint paint = Paint();
    Path path = Path();

    /// style here
    paint.color = Colors.white.withAlpha(50);
    paint.strokeWidth = 4;
    paint.style = PaintingStyle.fill;

    /// path here
    path.moveTo(0, 10);
    path.lineTo(0, y - borderRadius);
    path.quadraticBezierTo(0, y, borderRadius, y);
    path.lineTo(x - 55, y);
    path.lineTo(x - 40, y + 20);
    path.lineTo(x - 35, y);
    path.lineTo(x - borderRadius, y);
    path.quadraticBezierTo(x, y, x, y - borderRadius);
    path.lineTo(x, 0);
    path.lineTo(borderRadius, 0);
    path.quadraticBezierTo(0, 0, 0, borderRadius);

    /// draw path here main activity
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
