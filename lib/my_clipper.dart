import 'dart:math';

import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;

    final Size(:width, :height) = size;
    final centerOffset = Offset(width / 2, height / 2);
    final radius = min(width, height) / 2;

    canvas.drawRect(
        Rect.fromCircle(center: centerOffset, radius: radius), paint);

        
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(MyCustomPainter oldDelegate) => false;
}
