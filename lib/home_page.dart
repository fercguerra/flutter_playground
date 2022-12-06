import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView (
          child: Column(
            children: [
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.green,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.blue,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.black,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.amber,
                height: 150,
                width: 150,
              ),
            ],
          ),
        ));
  }
}
