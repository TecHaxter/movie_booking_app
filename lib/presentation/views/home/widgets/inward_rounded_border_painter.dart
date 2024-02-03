import 'package:flutter/widgets.dart';

class InwardBorderRoundedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.quadraticBezierTo(size.width * 0.0001250, size.height * 0.8777750,
        size.width * 0.1250000, size.height * 0.8750000);
    path_0.cubicTo(
        size.width * 0.3118750,
        size.height * 0.8750000,
        size.width * 0.6856250,
        size.height * 0.8750000,
        size.width * 0.8725000,
        size.height * 0.8750000);
    path_0.quadraticBezierTo(size.width * 0.9990500, size.height * 0.8777750,
        size.width * 0.9975000, size.height);
    path_0.lineTo(0, size.height);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
