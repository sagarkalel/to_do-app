import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6087833, size.height * 0.4286429);
    path_0.quadraticBezierTo(size.width * 0.6092500, size.height * 0.3847000,
        size.width * 0.6051250, size.height * 0.3583143);
    path_0.cubicTo(
        size.width * 0.5983979,
        size.height * 0.3418321,
        size.width * 0.5982583,
        size.height * 0.3107857,
        size.width * 0.5782167,
        size.height * 0.2923857);
    path_0.cubicTo(
        size.width * 0.5549750,
        size.height * 0.2720286,
        size.width * 0.5227750,
        size.height * 0.2659857,
        size.width * 0.4814083,
        size.height * 0.2857857);
    path_0.cubicTo(
        size.width * 0.4555917,
        size.height * 0.3080429,
        size.width * 0.4503167,
        size.height * 0.3338571,
        size.width * 0.4429500,
        size.height * 0.3572143);
    path_0.cubicTo(
        size.width * 0.4397417,
        size.height * 0.3838714,
        size.width * 0.4352500,
        size.height * 0.4118857,
        size.width * 0.4429500,
        size.height * 0.4286429);
    path_0.cubicTo(
        size.width * 0.4475917,
        size.height * 0.4498000,
        size.width * 0.4472500,
        size.height * 0.4844143,
        size.width * 0.4846167,
        size.height * 0.5000714);
    path_0.cubicTo(
        size.width * 0.5195667,
        size.height * 0.5088714,
        size.width * 0.5445500,
        size.height * 0.4747714,
        size.width * 0.5679500,
        size.height * 0.5000714);
    path_0.cubicTo(
        size.width * 0.5795000,
        size.height * 0.5237857,
        size.width * 0.5814250,
        size.height * 0.5415143,
        size.width * 0.5679500,
        size.height * 0.5729286);
    path_0.cubicTo(
        size.width * 0.5496833,
        size.height * 0.5901714,
        size.width * 0.5195667,
        size.height * 0.5960571,
        size.width * 0.4846167,
        size.height * 0.5715000);
    path_0.cubicTo(
        size.width * 0.4684250,
        size.height * 0.5602429,
        size.width * 0.4617083,
        size.height * 0.5487286,
        size.width * 0.4429500,
        size.height * 0.5000714);
    path_0.cubicTo(
        size.width * 0.4378167,
        size.height * 0.5179286,
        size.width * 0.4429500,
        size.height * 0.5536429,
        size.width * 0.4429500,
        size.height * 0.5715000);
    path_0.cubicTo(
        size.width * 0.4482333,
        size.height * 0.5937571,
        size.width * 0.4549500,
        size.height * 0.6151714,
        size.width * 0.4846167,
        size.height * 0.6429286);
    path_0.cubicTo(
        size.width * 0.5088167,
        size.height * 0.6473286,
        size.width * 0.5424667,
        size.height * 0.6484286,
        size.width * 0.5685917,
        size.height * 0.6429286);
    path_0.cubicTo(
        size.width * 0.6006667,
        size.height * 0.6129714,
        size.width * 0.6049750,
        size.height * 0.6080571,
        size.width * 0.6134667,
        size.height * 0.5715000);
    path_0.cubicTo(
        size.width * 0.6166750,
        size.height * 0.5514429,
        size.width * 0.6179583,
        size.height * 0.5355286,
        size.width * 0.6141083,
        size.height * 0.5000714);
    path_0.cubicTo(
        size.width * 0.6040083,
        size.height * 0.4625000,
        size.width * 0.5887917,
        size.height * 0.4379429,
        size.width * 0.5692333,
        size.height * 0.4289714);
    path_0.cubicTo(
        size.width * 0.5352500,
        size.height * 0.4255857,
        size.width * 0.5128250,
        size.height * 0.4507286,
        size.width * 0.4846167,
        size.height * 0.4286429);
    path_0.cubicTo(
        size.width * 0.4684333,
        size.height * 0.4087571,
        size.width * 0.4681417,
        size.height * 0.3909571,
        size.width * 0.4840417,
        size.height * 0.3578714);
    path_0.cubicTo(
        size.width * 0.5291917,
        size.height * 0.3247286,
        size.width * 0.5296667,
        size.height * 0.3244571,
        size.width * 0.5696833,
        size.height * 0.3573286);
    path_0.quadraticBezierTo(size.width * 0.5910083, size.height * 0.3784571,
        size.width * 0.6087833, size.height * 0.4286429);
    path_0.close();

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(62, 189, 255, 136)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
