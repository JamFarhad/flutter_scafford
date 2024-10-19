import 'dart:math';

import 'package:flutter/material.dart';

// class MyClipper extends CustomClipper<Path> {
//   MyClipper({required this.sweepAngle, this.startAngle = 0.0});
//   final double sweepAngle;
//   double startAngle;
//   @override
//   Path getClip(Size size) {
//     final Size(:height, :width) = size;
//     Path path = Path();

//     path.arcTo(Rect.fromLTWH(0, 0, width, height), degToRadian(startAngle),
//         degToRadian(sweepAngle), true);
//     return path;
//   }

//   double degToRadian(double deg) => pi * deg / 180.0;

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) =>
//       (oldClipper as MyClipper).sweepAngle != sweepAngle;
// }

class MyClipper2 extends CustomClipper<Path> {
  MyClipper2({required this.sweepAngle, this.startAngle = 0.0});
  final double sweepAngle;
  final double startAngle;
  @override
  Path getClip(Size size) {
    final Size(:height, :width) = size;
    final radius = width / 2;
    final center = Offset(width/2, height/2);
    Path path = Path();
    path.moveTo(center.dx, center.dy);
    path.arcTo(Rect.fromCircle(center: center, radius: radius),degToRadian(startAngle),degToRadian(sweepAngle),false);
    return path;
  }

  double degToRadian(double deg) => pi * deg / 180.0;

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) =>
  (oldClipper as MyClipper2).sweepAngle != sweepAngle;
}
