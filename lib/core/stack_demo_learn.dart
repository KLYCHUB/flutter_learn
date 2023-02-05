import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class StackDemoLearn extends StatelessWidget {
  const StackDemoLearn({super.key});
  final top = 250.0;
  final leftRihgt = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Positioned.fill(
                  bottom: top / 8,
                  child: RandomImage(
                      imageHeigt: MediaQuery.of(context).size.height,
                      image: "assets/png/KingPofi.png"),
                ),
                Positioned(
                  top: top,
                  bottom: 0,
                  left: leftRihgt,
                  right: leftRihgt,
                  child: Card(color: Colors.yellow, shape: rrbCricular()),
                ),
              ],
            ),
          ),
          const Spacer(flex: 6),
        ],
      ),
    );
  }

  RoundedRectangleBorder rrbCricular() {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(15));
  }
}
