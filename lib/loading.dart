import 'package:flutter/material.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget>
    with TickerProviderStateMixin {
  int second = 1;
  double rtr = 0.0;
  double rbr = 0.0;
  double rbl = 0.0;
  double rtl = 0.0;

  late AnimationController _animationController;
  late AnimationController _animationController2;
  late AnimationController _animationController3;
  late AnimationController _animationController4;
  late Animation<double> _borderRadiusAnimation;
  late Animation<double> _borderRadiusAnimation2;
  late Animation<double> _borderRadiusAnimation3;
  late Animation<double> _borderRadiusAnimation4;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: second))
          ..addStatusListener((status) {
            if (_animationController.isCompleted) {
              _animationController2.forward();
              _animationController.reverse();
            }
          })
          ..addListener(() {
            setState(() {});
          })
          ..forward();

    _animationController2 =
        AnimationController(vsync: this, duration: Duration(seconds: second))
          ..addStatusListener((status) {
            if (_animationController2.isCompleted) {
              _animationController3.forward();
              _animationController2.reverse();
            }
          })
          ..addListener(() {
            setState(() {});
          });

    _animationController3 =
        AnimationController(vsync: this, duration: Duration(seconds: second))
          ..addStatusListener((status) {
            if (_animationController3.isCompleted) {
              _animationController4.forward();
              _animationController3.reverse();
            }
          })
          ..addListener(() {
            setState(() {});
          });

    _animationController4 =
        AnimationController(vsync: this, duration: Duration(seconds: second))
          ..addStatusListener((status) {
            if (_animationController4.isCompleted) {
              _animationController.forward();
              _animationController4.reverse();
            }
          })
          ..addListener(() {
            setState(() {});
          });

    _borderRadiusAnimation =
        Tween(begin: 10.0, end: 100.0).animate(_animationController);

    _borderRadiusAnimation2 =
        Tween(begin: 10.0, end: 100.0).animate(_animationController2);

    _borderRadiusAnimation3 =
        Tween(begin: 10.0, end: 100.0).animate(_animationController3);

    _borderRadiusAnimation4 =
        Tween(begin: 10.0, end: 100.0).animate(_animationController4);

    _colorAnimation = ColorTween(begin: Colors.amber, end: Colors.indigo)
        .animate(CurvedAnimation(
            parent: _animationController, curve: const Interval(0.0, 0.25)));
    _colorAnimation = ColorTween(begin: Colors.indigo, end: Colors.deepPurple)
        .animate(CurvedAnimation(
            parent: _animationController2, curve: const Interval(0.0, 0.5)));
    _colorAnimation = ColorTween(begin: Colors.deepPurple, end: Colors.teal)
        .animate(CurvedAnimation(
            parent: _animationController3, curve: const Interval(0.0, 0.75)));

    // if (_animationController.status == AnimationStatus.completed) {
    //   _animationController.reset();
    // }
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationController2.dispose();
    _animationController3.dispose();
    _animationController4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: _colorAnimation.value,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(_borderRadiusAnimation.value),
              bottomRight: Radius.circular(_borderRadiusAnimation2.value),
              bottomLeft: Radius.circular(_borderRadiusAnimation3.value),
              topLeft: Radius.circular(_borderRadiusAnimation4.value),
            ),
          ),
        ),
      ],
    );
  }
}
