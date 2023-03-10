import 'package:flutter/material.dart';
import 'package:flutter_learn/product/lang/langue_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _customCounter = 0;
  // ignore: unused_field
  final String _hello = "Hello";
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          ++_customCounter;
        });
      },
      // ignore: prefer_interpolation_to_compose_strings
      child: Text(LngueItems().helloText + " " + "$_customCounter"),
    );
  }
}
