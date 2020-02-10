import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent[400],
          appBar: AppBar(
            title: Center(child: Text("Magic Ball")),
          ),
          body: MagicPage(),
        ),
      ),
    );

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int numberofVall = 1;

  void pressButton() {
    Random random = new Random();
    setState(() {
      numberofVall = random.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: pressButton,
            child: Image.asset(
              'images/ball${numberofVall}.png',
            ),
          ),
        ),
      ],
    );
  }
}
