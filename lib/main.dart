import 'package:flutter/material.dart';
import 'package:flutter_thermometer/thermometer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Painter&Animation'),
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
  double end = 0.8;
  double start = 0.2;

  double pointValue = 0.0;

  void updateTweenValues() {
    setState(() {
      end = end == 0.8 ? 0.2 : 0.8;
      start = start == 0.8 ? 0.2 : 0.8;
    });
  }

  @override
  Widget build(BuildContext context) {
    Tween<double> tween = Tween<double>(begin: start, end: end);
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 226, 226, 226),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Stack(children: [
          Center(
            child: Container(
                height: 480,
                width: 200,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(-5, -5),
                          blurRadius: 10,
                          color: Color.fromARGB(221, 44, 44, 44),
                          spreadRadius: 5),
                      BoxShadow(
                          offset: Offset(5, 5),
                          blurRadius: 10,
                          color: Colors.white,
                          spreadRadius: 5)
                    ],
                    gradient: const LinearGradient(
                      colors: [Colors.teal, Colors.indigo, Colors.cyan],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(80))),
          ),
          Center(
              child: TweenAnimationBuilder(
            tween: tween,
            duration: const Duration(seconds: 3),
            builder: (context, value, child) {
              return CustomPaint(
                painter: MyThermometerPainter(pointValue: value),
                size: const Size(100, 450),
              );
            },
          )),
          Positioned(
            top: 434,
            left: 604,
            child: ElevatedButton(
              onPressed: () {
                updateTweenValues();
              },
              style: ElevatedButton.styleFrom(shape: const CircleBorder()),
              child: const Icon(Icons.device_thermostat_outlined),
            ),
          )
        ]));
  }
}


/** child: Container(
        height: 500,
        width: 200,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(-5, -5), blurRadius: 3, color: Colors.black87),
              BoxShadow(
                  offset: Offset(5, 5), blurRadius: 3, color: Colors.white)
            ],
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.indigo, Colors.cyan],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )), */