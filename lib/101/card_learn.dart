import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    const data = "ErenKLYC";
    const data2 = "KLYCHUB";
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CustomWidget(
            cardColor: Colors.green,
            child: const SizedBox(
              height: 150,
              width: 150,
              child: Center(child: Text(data)),
            ),
          ),
          CustomWidget(
            cardColor: Colors.blue,
            child: const SizedBox(
              height: 150,
              width: 150,
              child: Center(child: Text(data2)),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  CustomWidget({
    super.key,
    required this.child,
    required this.cardColor,
  });
  final Widget child;
  final raundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(25));
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      shape: raundedRectangleBorder,
      margin: const EdgeInsets.all(15),
      child: child,
    );
  }
}
