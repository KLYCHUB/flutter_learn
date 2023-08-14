import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CustomIndicatorBar()],
      ),
      body: const Column(
        children: [
          LinearProgressIndicator(),
        ],
      ),
    );
  }
}

class CustomIndicatorBar extends StatelessWidget {
  const CustomIndicatorBar({
    super.key,
  });

  final Color redColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: CircularProgressIndicator(color: redColor),
      ),
    );
  }
}
