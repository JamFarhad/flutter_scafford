import 'package:flutter/material.dart';

class PortraitLoginWidget extends StatelessWidget {
  const PortraitLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Expanded(
                child: Container(
      color: Colors.blue,
      child: Column(
        children: [
          Expanded(
            flex: 23,
            child: Image.asset('images/1.png'),
          )
        ],
      ),
    ))));
  }
}
