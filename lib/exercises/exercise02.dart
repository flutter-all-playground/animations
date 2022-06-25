import 'package:flutter/material.dart';
import 'package:masterclass_animations/exercises/widgets/item_exercise02.dart';

class Exercise02 extends StatelessWidget {
  const Exercise02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 10,
      itemBuilder: (context, index) => const ItemExercise02(),
    );
  }
}
