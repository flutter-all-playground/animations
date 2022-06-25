import 'package:flutter/material.dart';

class Exercise01 extends StatefulWidget {
  const Exercise01({Key? key}) : super(key: key);

  @override
  _Exercise01State createState() => _Exercise01State();
}

class _Exercise01State extends State<Exercise01> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: const Duration(seconds: 1),
          top: clicked ? MediaQuery.of(context).size.height - 126 : 16,
          left: clicked ? MediaQuery.of(context).size.width - 71 : (MediaQuery.of(context).size.width / 2) - 55,
          child: GestureDetector(
            onTap: () {
              setState(() {
                clicked = !clicked;
                debugPrint('clicou');
              });
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(clicked ? 80 : 0),
                color: Colors.green,
              ),
              alignment: Alignment.bottomRight,
              width: clicked ? 55 : 110,
              height: clicked ? 55 : 55,
            ),
          ),
        ),
      ],
    );
  }
}
