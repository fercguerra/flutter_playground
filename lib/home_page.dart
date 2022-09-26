import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  //const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var state = GeoState.square();

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Masterclass 5'),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedContainer(
            duration: const Duration(seconds: 4),
            decoration: BoxDecoration(
              color: state.color,
              borderRadius: BorderRadius.circular(state.radius),
            ),
            height: state.squareSize,
            width: state.squareSize,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          state = state.type == GeoState.circle
              ? GeoState.square()
              : GeoState.circle();
        });
      }),
    );
  }
}

enum Geotype { square, cricle }

class GeoState {
  final double squareSize;
  final Color color;
  final double radius;
  final Geotype type;

  GeoState({
    required this.squareSize,
    required this.color,
    required this.radius,
    required this.type,
  });

  factory GeoState.square() {
    return GeoState(
      squareSize: 200,
      color: Colors.red,
      radius: 200,
      type: Geotype.square,
    );
  }
  factory GeoState.circle() {
    return GeoState(
      squareSize: 200,
      color: Colors.blue,
      radius: 200,
      type: Geotype.cricle,
    );
  }
}
