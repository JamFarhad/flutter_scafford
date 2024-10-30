import 'package:flutter/material.dart';

typedef CheckTap = void Function(bool?);

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key, required this.onChange, this.isChecked = false});

  final bool? isChecked;
  final CheckTap onChange;

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool? _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CheckBoxPainter(isChecked: _isChecked),
      child: InkWell(
        onTap: () {
          setState(() {
            _isChecked = _isChecked == true ? false : true;
          });
          widget.onChange(_isChecked);
        },
      ),
    );
  }
}

class CheckBoxPainter extends CustomPainter {
  final bool? isChecked;

  CheckBoxPainter({this.isChecked});

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    final tickPath = Path();
    tickPath.moveTo(0, height * 0.55);
    tickPath.quadraticBezierTo(width * 0.35, height * 0.7, width * 0.4, height);
    tickPath.quadraticBezierTo(width * 0.5, height * 0.5, width, height * 0.2);
    tickPath.quadraticBezierTo(
        width * 0.35, height * 0.4, width * 0.4, height * 0.7);
    tickPath.quadraticBezierTo(width * 0.35, height * 0.55, 0, height * 0.55);
    tickPath.close();

    Paint boxPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    canvas.drawRect(Rect.fromLTWH(20, 20, width - 40, height - 40), boxPaint);

    if (isChecked == false) {
      var padding = width * 0.15;
      canvas.drawRect(
          Rect.fromLTWH(padding, padding, width - (2 * padding),
              height - (4.5 * padding)),
          Paint()..color = Colors.grey);
      canvas.drawRect(
          Rect.fromLTWH(padding, 3.5 * padding, width - (2 * padding),
              height - (4.5 * padding)),
          Paint()..color = Colors.grey);
    } else if (isChecked == true) {
      canvas.drawPath(tickPath, Paint()..color = Colors.green);
      canvas.drawLine(
          Offset(width * 0.3, height * 0.9),
          Offset(width * 0.5, height * 0.9),
          Paint()
            ..color = Colors.black
            ..strokeWidth = 5);
    }
  }

  @override
  bool shouldRepaint(CheckBoxPainter oldDelegate) =>
      oldDelegate.isChecked != isChecked;

  @override
  bool shouldRebuildSemantics(CheckBoxPainter oldDelegate) =>
      oldDelegate.isChecked != isChecked;
}

// import 'package:flutter/material.dart';

// typedef CheckTap = void Function(bool?);

// class MyCheckBox extends StatefulWidget {
//   const MyCheckBox({super.key, required this.onChange, this.isChecked = false});

//   final bool? isChecked;
//   final CheckTap onChange;
//   @override
//   State<MyCheckBox> createState() => _MyCheckBoxState();
// }

// class _MyCheckBoxState extends State<MyCheckBox> {
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: CheckBoxPainter(),
//       child: InkWell(
//         onTap: () {
//           setState(() {
//             widget.isChecked = widget.isChecked == true ? false : true;
//           });
//           widget.onChange(widget.isChecked);
//         },
//       ),
//     );
//   }
// }

// class CheckBoxPainter extends CustomPainter {
//   bool? isChecked = true;
//   CheckBoxPainter({this.isChecked});

//   @override
//   void paint(Canvas canvas, Size size) {
//     final Size(:width, :height) = size;

//     final tickPath = Path();
//     tickPath.moveTo(0, height * 0.55);
//     tickPath.quadraticBezierTo(width * 0.35, height * 0.7, width * 0.4, height);
//     tickPath.quadraticBezierTo(width * 0.5, height * 0.5, width, height * 0.2);

//     tickPath.quadraticBezierTo(
//         width * 0.35, height * 0.4, width * 0.4, height * 0.7);
//     tickPath.quadraticBezierTo(width * 0.35, height * 0.55, 0, height * 0.55);
//     tickPath.close();

//     Paint boxPaint = Paint()
//       ..color = Colors.black
//       ..strokeWidth = 5
//       ..style = PaintingStyle.stroke;

//     Paint checkPaint = Paint()..color = Colors.green;

//     canvas.drawRect(Rect.fromLTWH(20, 20, width - 40, height - 40), boxPaint);

//     if (isChecked == null) {
//       var padding = width * 0.15;
//       canvas.drawRect(
//           Rect.fromLTWH(padding, padding, width - (2 * padding),
//               height - (4.5 * padding)),
//           Paint()..color = Colors.grey);
//       canvas.drawRect(
//           Rect.fromLTWH(padding, 3.5 * padding, width - (2 * padding),
//               height - (4.5 * padding)),
//           Paint()..color = Colors.grey);
//     } else if (isChecked == true) {
//       canvas.drawPath(tickPath, Paint()..color = Colors.green);
//       canvas.drawLine(
//           Offset(width * 0.3, height * 0.9),
//           Offset(width * 0.5, height * 0.9),
//           Paint()
//             ..color = Colors.black
//             ..strokeWidth = 5);
//     }
//   }

//   @override
//   bool shouldRepaint(CheckBoxPainter oldDelegate) =>
//       oldDelegate.isChecked != isChecked;

//   @override
//   bool shouldRebuildSemantics(CheckBoxPainter oldDelegate) =>
//       oldDelegate.isChecked != isChecked;
// }
