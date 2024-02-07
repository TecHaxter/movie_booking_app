import 'package:flutter/material.dart';

class SideCutClipper extends CustomClipper<Path> {
  final double cornerRadius;
  final double sideCutRadius;

  ///A fraction value implying the location of the sideCuts
  /// 1/2 of height or 3/5 of height
  final double midPointWrtHeight;
  const SideCutClipper({
    this.cornerRadius = 0,
    this.sideCutRadius = 30,
    this.midPointWrtHeight = 1 / 2,
  });

  @override
  Path getClip(Size size) {
    var path = Path();

    double midPoint = size.height * midPointWrtHeight;

    path.moveTo(0, cornerRadius);
    path.lineTo(0, (midPoint - sideCutRadius));

    //LEFT ARC
    path.quadraticBezierTo(
        sideCutRadius, midPoint - sideCutRadius, sideCutRadius, midPoint);
    path.quadraticBezierTo(
        sideCutRadius, midPoint + sideCutRadius, 0, midPoint + sideCutRadius);

    path.lineTo(0, size.height - cornerRadius);

    //BottomLeft
    path.quadraticBezierTo(0, size.height, cornerRadius, size.height);

    path.lineTo(size.width - cornerRadius, size.height);

    //BottomRight
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - cornerRadius);

    path.lineTo(size.width, (midPoint + sideCutRadius));

    //RIGHT ARC
    path.quadraticBezierTo((size.width - sideCutRadius),
        (midPoint + sideCutRadius), (size.width - sideCutRadius), (midPoint));
    path.quadraticBezierTo((size.width - sideCutRadius),
        (midPoint - sideCutRadius), size.width, midPoint - sideCutRadius);

    path.lineTo(size.width, cornerRadius);

    //TopRight
    path.quadraticBezierTo(size.width, 0, size.width - cornerRadius, 0);

    path.lineTo(cornerRadius, 0);

    //TopLeft
    path.quadraticBezierTo(0, 0, 0, cornerRadius);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class SideCutPainter extends CustomPainter {
  final double strokeWidth;
  final Color strokeColor;
  final Color? backgroundColor;
  final SideCutClipper clipper;

  const SideCutPainter({
    this.strokeWidth = 2.0,
    this.strokeColor = Colors.black,
    this.backgroundColor,
    this.clipper = const SideCutClipper(),
  });

  @override
  void paint(Canvas canvas, Size size) {
    //Draw border Stroke
    Paint paint = Paint()
      ..color = strokeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    Path clippedPath = clipper.getClip(size);
    canvas.drawPath(clippedPath, paint);

    //Cut the shape
    canvas.clipPath(clippedPath);

    //Fill the background
    if (backgroundColor == null) {
      return;
    }
    Paint foregroundPainter = Paint()..color = backgroundColor!;
    final foregroundRect =
        Rect.fromPoints(Offset.zero, Offset(size.width, size.height));
    canvas.drawRect(foregroundRect, foregroundPainter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
