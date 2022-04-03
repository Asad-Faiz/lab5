import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Bell(1,Colors.yellow),
                      Bell(2,Colors.black),
                      Bell(3,Colors.purple),
                      Bell(4,Colors.blue),
                      Bell(5,Colors.orange),
                      Bell(6,Colors.red),
                      Bell(7,Colors.green),
                    ],
                  ))
                ],
              ))),
    );
  }

  Expanded Bell(int num,Color color) {
    return Expanded(
        child: Container(
      height: double.infinity,
      color: color,
      child: TextButton(
        onPressed: () {
           
          AudioPlayer().play('assets/note$num.wav');
        },
        child: Text(""),
      ),
    ));
  }
}
