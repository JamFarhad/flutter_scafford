import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  static const fa = "FA";
  // static const fsc = "FSc";
  // static const icom = "Icom";
  // static const ics = "Ics";
  String groupValue = fa;
  static double sliderValue = 0;
  final src =
      "https://images.unsplash.com/photo-1728755833852-2c138c84cfb1?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            src,
            height: 100 + sliderValue,
            width: 100 + sliderValue,
          ),
          Slider.adaptive(
              activeColor: Colors.amber,
              inactiveColor: Colors.deepPurple,
              secondaryActiveColor: Colors.brown,
              thumbColor: Colors.indigoAccent,
              label: '${sliderValue.round()}',
              min: 0,
              max: 100,
              value: sliderValue,
              onChanged: (value) => setState(() {
                    sliderValue = value;
                  }))
        ],
      )),
    );
  }
}

/** RadioListTile(
                value: fa,
                groupValue: groupValue,
                onChanged: (value) => setState(() {
                  groupValue = value!;
                }),
                secondary: const Text("FA"),
              ),
              RadioListTile(
                value: fsc,
                groupValue: groupValue,
                onChanged: (value) => setState(() {
                  groupValue = value!;
                }),
                secondary: const Text("FSc"),
              ),
              RadioListTile(
                value: icom,
                groupValue: groupValue,
                onChanged: (value) => setState(() {
                  groupValue = value!;
                }),
                secondary: const Text("Icom"),
              ),
              RadioListTile(
                value: ics,
                groupValue: groupValue,
                onChanged: (value) => setState(() {
                  groupValue = value!;
                }),
                secondary: const Text("Ics"),
              ), */
