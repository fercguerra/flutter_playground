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
      body: ListView(
        //coluna com scroll
        children: [
          Container(
            color: Colors.red,
            height: 150,
          ),
          Container(
            color: Colors.green,
            height: 150,
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.green,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 5),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.blue,
            height: 150,
          ),
          Container(
            color: Colors.black,
            height: 150,
          ),
          Container(
            color: Colors.amber,
            height: 150,
          ),
        ],
      ),
    );
  }
}
