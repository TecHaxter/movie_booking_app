import 'package:flutter/widgets.dart';
import 'package:movie_booking_app/core/constant/color_palette.dart';

class ScreenPainter extends CustomPainter {
  final Color color;
  final double thickness;
  const ScreenPainter({
    this.color = ColorPalette.tertiary,
    this.thickness = 4.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = thickness;
    Path path = Path();

    final oneThirdHeight = size.height / 3;

    path.moveTo(
      0,
      oneThirdHeight,
    );
    path.quadraticBezierTo(
      size.width / 2,
      0,
      size.width,
      oneThirdHeight,
    );
    path.lineTo(
      size.width,
      oneThirdHeight + thickness,
    );
    path.quadraticBezierTo(
      size.width / 2,
      thickness,
      0,
      oneThirdHeight + thickness,
    );
    path.close();
    canvas.drawPath(path, paint);

    canvas.drawShadow(path, color, 12.0, false);
  }

  @override
  bool shouldRepaint(ScreenPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(ScreenPainter oldDelegate) => false;
}
