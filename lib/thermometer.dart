import 'package:flutter/material.dart';

class MyThermometerPainter extends CustomPainter {
  final double pointValue;

  MyThermometerPainter({required this.pointValue});
  @override
  void paint(Canvas canvas, Size size) {
    final Size(:width, :height) = size;
    Path path = Path();

    path.moveTo(width * 0.32, height * 0.8);
    path.lineTo(width * 0.32, height * 0.1);
    path.arcToPoint(Offset(width * 0.68, height * 0.1),
        radius: const Radius.circular(10));
    path.lineTo(width * 0.68, height * 0.8);
    path.arcToPoint(Offset(width * 0.32, height * 0.8),
        radius: const Radius.circular(50), largeArc: true);

    canvas.drawLine(
        Offset(width * 0.7, height * 0.14),
        Offset(width * 0.85, height * 0.14),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 4
          ..strokeCap = StrokeCap.round);

    canvas.drawLine(
        Offset(width * 0.7, height * 0.17),
        Offset(width * 0.8, height * 0.17),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);

    canvas.drawLine(
        Offset(width * 0.7, height * 0.2),
        Offset(width * 0.8, height * 0.2),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.23),
        Offset(width * 0.8, height * 0.23),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.26),
        Offset(width * 0.85, height * 0.26),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 4
          ..strokeCap = StrokeCap.round);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.29),
        Offset(width * 0.8, height * 0.29),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.32),
        Offset(width * 0.8, height * 0.32),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.35),
        Offset(width * 0.8, height * 0.35),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.38),
        Offset(width * 0.85, height * 0.38),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 4
          ..strokeCap = StrokeCap.round);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.41),
        Offset(width * 0.8, height * 0.41),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.44),
        Offset(width * 0.8, height * 0.44),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.47),
        Offset(width * 0.8, height * 0.47),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.50),
        Offset(width * 0.85, height * 0.50),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 4
          ..strokeCap = StrokeCap.round);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.53),
        Offset(width * 0.8, height * 0.53),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.56),
        Offset(width * 0.8, height * 0.56),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.59),
        Offset(width * 0.8, height * 0.59),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.62),
        Offset(width * 0.85, height * 0.62),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 4
          ..strokeCap = StrokeCap.round);
    canvas.drawLine(
        Offset(width * 0.7, height * 0.65),
        Offset(width * 0.8, height * 0.65),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);

    canvas.drawLine(
        Offset(width * 0.7, height * 0.68),
        Offset(width * 0.8, height * 0.68),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);

    canvas.drawLine(
        Offset(width * 0.7, height * 0.71),
        Offset(width * 0.8, height * 0.71),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 2);

    canvas.drawLine(
        Offset(width * 0.7, height * 0.74),
        Offset(width * 0.85, height * 0.74),
        Paint()
          ..color = Colors.black
          ..strokeWidth = 4
          ..strokeCap = StrokeCap.round);

    TextSpan text100 = const TextSpan(
        text: "100°C", style: TextStyle(fontWeight: FontWeight.bold));
    TextPainter textPainter100 =
        TextPainter(text: text100, textDirection: TextDirection.ltr);
    textPainter100.layout();
    textPainter100.paint(canvas, Offset(width * 0.9, height * 0.12));

    TextSpan text80 = const TextSpan(
        text: "80°C", style: TextStyle(fontWeight: FontWeight.bold));
    TextPainter textPainter80 =
        TextPainter(text: text80, textDirection: TextDirection.ltr);
    textPainter80.layout();
    textPainter80.paint(canvas, Offset(width * 0.9, height * 0.24));

    TextSpan text60 = const TextSpan(
        text: "60°C", style: TextStyle(fontWeight: FontWeight.bold));
    TextPainter textPainter60 =
        TextPainter(text: text60, textDirection: TextDirection.ltr);
    textPainter60.layout();
    textPainter60.paint(canvas, Offset(width * 0.9, height * 0.36));

    TextSpan text40 = const TextSpan(
        text: "40°C", style: TextStyle(fontWeight: FontWeight.bold));
    TextPainter textPainter40 =
        TextPainter(text: text40, textDirection: TextDirection.ltr);
    textPainter40.layout();
    textPainter40.paint(canvas, Offset(width * 0.9, height * 0.48));

    TextSpan text20 = const TextSpan(
        text: "20°C", style: TextStyle(fontWeight: FontWeight.bold));
    TextPainter textPainter20 =
        TextPainter(text: text20, textDirection: TextDirection.ltr);
    textPainter20.layout();
    textPainter20.paint(canvas, Offset(width * 0.9, height * 0.60));

    TextSpan text0 = const TextSpan(
        text: "0°C", style: TextStyle(fontWeight: FontWeight.bold));
    TextPainter textPainter0 =
        TextPainter(text: text0, textDirection: TextDirection.ltr);
    textPainter0.layout();
    textPainter0.paint(canvas, Offset(width * 0.9, height * 0.72));

    canvas.drawPath(
        path,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4);
    canvas.drawPath(
        path,
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill);

    Path path2 = Path();

    path2.moveTo(width * 0.40, height * 0.7);
    path2.lineTo(width * 0.40, height * 0.13);
    path2.arcToPoint(Offset(width * 0.6, height * 0.13),
        radius: const Radius.circular(10));
    path2.lineTo(width * 0.6, height * 0.7);
    path2.arcToPoint(Offset(width * 0.40, height * 0.7),
        radius: const Radius.circular(10));

    canvas.drawPath(
        path2,
        Paint()
          ..color = const Color.fromARGB(255, 210, 210, 210)
          ..strokeWidth = 3);

    const gradient = LinearGradient(
      colors: [
        Colors.yellow,
        Colors.amber,
        Color.fromARGB(255, 235, 143, 3),
        Color.fromARGB(255, 235, 123, 3),
        Color.fromARGB(255, 235, 84, 3),
        Colors.red
      ],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    );
    Path path3 = Path();

    path3.moveTo(width * 0.40, height * 0.75);
    path3.lineTo(width * 0.40, height *pointValue);
    path3.arcToPoint(Offset(width * 0.6, height *pointValue),
        radius: const Radius.circular(10));
    path3.lineTo(width * 0.6, height * 0.75);
    path3.arcToPoint(Offset(width * 0.40, height * 0.75),
        radius: const Radius.circular(10));

    canvas.drawPath(
      path3,
      Paint()
        ..shader = gradient.createShader(Rect.fromLTWH(
            width * 0.40, height * 0.13, width * 0.20, height * 0.8)),
    );

    canvas.drawCircle(Offset(width * 0.5, height * 0.902), width * 0.4,
        Paint()..color = Colors.indigo);
  }

  @override
  bool shouldRepaint(MyThermometerPainter oldDelegate) =>
      oldDelegate.pointValue != pointValue;

  @override
  bool shouldRebuildSemantics(MyThermometerPainter oldDelegate) =>
      oldDelegate.pointValue != pointValue;
}

/**path.moveTo(width * 0.30, height * 0.8);
    path.lineTo(width * 0.30, height * 0.1);
    path.arcToPoint(Offset(width * 0.7, height * 0.1),
        radius: Radius.circular(10));
    path.lineTo(width * 0.7, height * 0.8);
    path.arcToPoint(Offset(width * 0.30, height * 0.8),
        radius: Radius.circular(50), largeArc: true);
 */

