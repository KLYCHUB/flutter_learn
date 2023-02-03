import 'package:flutter/material.dart';

class PaddinLearn extends StatefulWidget {
  const PaddinLearn({super.key});

  @override
  State<PaddinLearn> createState() => _PaddinLearnState();
}

class _PaddinLearnState extends State<PaddinLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: ProjectPadding.pagePaddingBottom,
              child: Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(horizontal: 15);
  static const pagePaddingBottom = EdgeInsets.only(bottom: 15);
}
