import 'package:flutter/material.dart';

import 'widgets/item_controled_exercise02.dart';

class ControledExercise02 extends StatelessWidget {
  const ControledExercise02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 10,
      itemBuilder: (context, index) => const ItemControledExercise02(),
    );
  }
}
