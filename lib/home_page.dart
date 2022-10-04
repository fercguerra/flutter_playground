import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  //const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<Color?> colorAnimation;

  late final Animation<double> sizeAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    //animation
    colorAnimation = ColorTween(
      begin: Colors.green.withOpacity(0.4),
      end: Colors.green,
    ).animate(CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
        reverseCurve: Curves.easeIn));

    sizeAnimation = Tween<double>(
      begin: 0.0,
      end: 300.0,
    ).animate(CurvedAnimation(
        parent: controller,
        curve: Curves.bounceOut,
        reverseCurve: Curves.bounceOut));

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final progressText = (controller.value * 100).floor().toString();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Masterclass 5'),
      ),
      body: Center(
        child: Container(
            width: 300,
            height: 80,
            color: Colors.grey[300],
            child: Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: [
                  Container(
                    height: 80,
                    width: sizeAnimation.value,
                    color: colorAnimation.value,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (controller.isCompleted) {
            controller.reverse();
          } else {
            controller.forward();
          }
        },
      ),
    );
  }
}
