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
  double end = 0.7;
  double start = 0.7;
  double pointValue = 0.0;
  late TextEditingController tempratureController;
  String bgImage = "assets/images/bg.jpg";
  void updateTweenValues() {
    setState(() {
      end = 1 - (pointValue / 100);
    });
  }

  @override
  void initState() {
    super.initState();
    tempratureController = TextEditingController();
  }

  @override
  void dispose() {
    tempratureController.dispose();
    super.dispose();
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
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(bgImage), fit: BoxFit.fill)),
          child: Expanded(
            child: Stack(children: [
              Expanded(
                child: Row(
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          const Spacer(),
                          Expanded(
                            flex: 20,
                            child: Container(
                                decoration: const BoxDecoration(
                              boxShadow: [
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
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blueGrey,
                                  Colors.cyan,
                                  Colors.blueAccent
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            )),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    const Spacer(flex: 4),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          const Spacer(
                            flex: 2,
                          ),
                          Expanded(
                            child: TextField(
                              controller: tempratureController,
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                labelText: "Temprature",
                                labelStyle: TextStyle(color: Colors.white),
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusColor: Colors.white,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                String temprature = tempratureController.text;
                                try {
                                  int temperatureValue = int.parse(temprature);
                                  setState(() {
                                    pointValue = temperatureValue.toDouble();
                                    updateTweenValues();
                                  });
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            'Please enter a valid integer temperature')),
                                  );
                                }
                              },
                              child: const Icon(
                                Icons.upgrade,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(flex: 3),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      child: Column(
                        children: [
                          const Spacer(),
                          Expanded(
                            flex: 11,
                            child: TweenAnimationBuilder(
                              tween: tween,
                              duration: const Duration(seconds: 3),
                              builder: (context, value, child) {
                                return CustomPaint(
                                  painter:
                                      MyThermometerPainter(pointValue: value),
                                  size: const Size(100, 450),
                                );
                              },
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    const Spacer(flex: 5),
                  ],
                ),
              ),
            ]),
          ),
        ));
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