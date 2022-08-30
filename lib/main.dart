import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      //ComponentElement
      child: Container(
        //RenderObjectElement
        color: Colors.red,
        width: 200,
        height: 200,
        child: Align(
          //quebra a filiação
          alignment: Alignment.bottomLeft,
          //RenderObjectElement (herda as coisas do pai), para parar de herdar, transformar em ComponentElement
          child: Container(
            color: Colors.blue,
            width: 120,
            height: 120,
          ),
        ),
      ),
    );
  }
}
