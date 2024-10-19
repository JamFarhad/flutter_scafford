import 'dart:async';

import 'package:flutter/material.dart';
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
  double sweepAngle = 280;
  double startAngle = 40;
  double distance = 20;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 20), (timer) {
      setState(() {
        if (sweepAngle < 359) {
          sweepAngle += 1;
          startAngle -= 0.5;
          distance -= 0.2;
        } else {
          sweepAngle = 280;
          startAngle = 40;
          distance = 20;
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
        child: Row(
          children: <Widget>[
            const SizedBox(
              width: 400,
            ),
            ClipPath(
              clipper:
                  MyClipper2(sweepAngle: sweepAngle, startAngle: startAngle),
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    gradient: RadialGradient(colors: [
                  Color.fromARGB(212, 255, 255, 255),
                  Colors.amber,
                ], focalRadius: 10)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 105,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const SizedBox(
                                width: 1,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: distance,
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 18, 29, 255),
                  borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 255, 8),
                  borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
      ),
    );
  }
}
