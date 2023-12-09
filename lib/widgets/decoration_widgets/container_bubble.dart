import 'package:flutter/material.dart';

class BubbleContainer extends StatelessWidget {
  const BubbleContainer({
    super.key,
    this.width,
    this.height,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.color,
  });
  final double? width;
  final double? height;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
      bottom: bottom,
      left: left,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
