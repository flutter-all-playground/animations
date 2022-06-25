import 'package:flutter/material.dart';

class ItemExercise02 extends StatefulWidget {
  const ItemExercise02({Key? key}) : super(key: key);

  @override
  _ItemExercise02State createState() => _ItemExercise02State();
}

class _ItemExercise02State extends State<ItemExercise02> {
  bool expanded = false;
  double turns = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          expanded = !expanded;
          turns = expanded ? 1 / 2 : 0;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          alignment: Alignment.topCenter,
          height: expanded ? 150 : 50,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  color: Colors.yellow,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 9,
                        child: Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.all(12),
                          child: const Text('hauhuahuaauh'),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: AnimatedRotation(
                          curve: Curves.easeOut,
                          duration: const Duration(seconds: 1),
                          turns: turns,
                          child: const Icon(Icons.arrow_drop_down),
                        ),
                      ),
                    ],
                  ),
                ),
                ClipRect(
                  child: AnimatedAlign(
                    heightFactor: expanded ? 1 : 0,
                    alignment: Alignment.topCenter,
                    duration: const Duration(seconds: 1),
                    child: Container(
                      color: Colors.red,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
