import 'dart:math';
import 'package:flutter/material.dart';

class ItemControledExercise02 extends StatefulWidget {
  const ItemControledExercise02({Key? key}) : super(key: key);

  @override
  _ItemControledExercise02State createState() => _ItemControledExercise02State();
}

class _ItemControledExercise02State extends State<ItemControledExercise02> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> sizeAnimation;
  late Animation<double> angleAnimation;
  final double _angle = 180;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    sizeAnimation = Tween<double>(begin: 0, end: 100).animate(animationController);
    angleAnimation = Tween<double>(begin: 0, end: _angle * pi / 180).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  if (animationController.isCompleted) {
                    animationController.reverse();
                  } else {
                    animationController.forward();
                  }
                },
                child: Container(
                  height: 60,
                  width: double.maxFinite,
                  color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 9,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.all(16),
                          child: const Text('ahuahauah'),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Transform.rotate(
                          angle: angleAnimation.value,
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(16),
                            child: const Icon(
                              Icons.arrow_downward,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: sizeAnimation.value,
                width: double.maxFinite,
                color: Colors.blue,
              ),
            ],
          ),
        );
      },
    );
  }
}
