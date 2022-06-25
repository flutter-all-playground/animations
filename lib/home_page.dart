import 'package:animations/exercises/controled_exercise02.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations'),
      ),
      // body: const Exercise01(),
      // body: const Exercise02(),
      // body: const ControledExercise01(),
      body: const ControledExercise02(),
    );
  }
}
