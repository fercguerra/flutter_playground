import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  //const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    const squareSize = 300.0;
    final color = Colors.blue;

    return Scaffold(
      appBar: AppBar(
        title: Text('Masterclass 5'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          color: color,
          height: squareSize,
          width: squareSize,
        ),
      ),
    );
  }
}
