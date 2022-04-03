import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatefulWidget {
  BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 45, 82),
        title: Text("Ask me Anything"),
      ),
      body: FlatButton(
        child: Image.asset("images/ball$counter.png"),
        onPressed: () {
          setState(() {
            counter = Random().nextInt(4) + 1;
            print('I am clicked');
            print("Random value : $counter");
          });
        },
      ),
    );
  }
}
