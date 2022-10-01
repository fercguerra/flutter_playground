import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  //const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    const progressWidth = 300.0;
    const progress = 0.5;
    final progressText = (progress * 100).floor().toString();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Masterclass 5'),
      ),
      body: Center(
        child: Container(
            width: progressWidth,
            height: 80,
            color: Colors.grey[300],
            child: Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: [
                  AnimatedContainer(
                    curve: Curves.easeInOut,
                    width: progressWidth * progress,
                    color: Colors.green,
                    duration: const Duration(seconds: 1),
                    alignment: Alignment.center,
                  ),
                  Align(
                    child: Text(
                      progressText,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
