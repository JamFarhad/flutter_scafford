import 'dart:math';

import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Size(:width, :height) = size;
    final radius = min(width, height) / 2;
    final eyeRadius = radius * 0.2;
    final eyeLocationValue = radius * 0.35;
    final mouthLocationValue = radius * 0.25;
    final mouthRadius = radius * 0.45;

    final center = Offset(width / 2, height / 2);
    final eyeLeft =
        Offset(center.dx - eyeLocationValue, center.dy - eyeLocationValue);
    final eyeRight =
        Offset(center.dx + eyeLocationValue, center.dy - eyeLocationValue);
    final mouthOffset = Offset(center.dx, center.dy + mouthLocationValue);
    Offset(center.dx + eyeLocationValue, center.dy - eyeLocationValue);

    final facePaint = Paint()..color = Colors.amber;
    final eyePaint = Paint()..color = Colors.black;
    final mouthPaint = Paint()..color = Colors.black;

    canvas.drawCircle(center, radius, facePaint);
    canvas.drawCircle(eyeLeft, eyeRadius, eyePaint);
    canvas.drawCircle(eyeRight, eyeRadius, eyePaint);
    canvas.drawArc(Rect.fromCircle(center: mouthOffset, radius: mouthRadius),
        0.5, 2.1, false, mouthPaint);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(MyPainter oldDelegate) => false;
}
