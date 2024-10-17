import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_circle_clipper/myClipper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter arcTo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double sweepAngle = 360;
  double startAngle = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if (sweepAngle < 360) {
          sweepAngle -= 2;
          startAngle -= sweepAngle;
        } else {
          sweepAngle = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipPath(
              clipper:
                  MyClipper(sweepAngle: sweepAngle, startAngle: startAngle),
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    // border: Border.all(color: Colors.black, width: 2),
                    gradient: RadialGradient(colors: [
                      Colors.amber,
                      Colors.blue,
                      Colors.cyan,
                      Colors.orangeAccent,
                      Colors.limeAccent,
                    ], focalRadius: 23)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
