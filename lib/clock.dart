import 'dart:math';

import 'package:flutter/material.dart';

class MyClockPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Size(:width, :height) = size;
    final center = Offset(width / 2, height / 2);
    final radius = min(width, height) / 2;

    final hoursTickLangth = radius * 0.06;
    final minutesTickLangth = radius * 0.03;
    final hoursStrokeWidth = radius * 0.02;
    final minutesStrokeWidth = radius * 0.01;

    final bodyPaint = Paint()..shader = const RadialGradient(colors: [Colors.amber, Colors.amber]).createShader(Rect.fromCircle(center: center, radius: radius));

    canvas.drawCircle(center, radius, bodyPaint);
    
  }

  @override
  bool shouldRepaint(MyClockPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(MyClockPainter oldDelegate) => false;
}
