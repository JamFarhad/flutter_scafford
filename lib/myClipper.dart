import 'dart:math';

import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  MyClipper({required this.sweepAngle, this.startAngle=0.0});
  final double sweepAngle;
  double startAngle;
  @override
  Path getClip(Size size) {
    final Size(:height, :width) = size;
    Path path = Path();
    
    path.arcTo(Rect.fromLTWH(0, 0, width, height), degToRadian(startAngle),
        degToRadian(sweepAngle), true);
    return path;
  }

  double degToRadian(double deg) => pi * deg / 180.0;

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) =>
      (oldClipper as MyClipper).sweepAngle != sweepAngle;
}
