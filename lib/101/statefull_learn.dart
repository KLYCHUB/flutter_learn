import 'package:flutter/material.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int countValue = 0;

  void incrementValue() {
    setState(() {
      countValue += 1;
    });
  }

  void deIncrementValue() {
    setState(() {
      countValue -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deIncrementButton(),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(countValue.toString()),
          ),
        ],
      ),
    );
  }

  Padding _deIncrementButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: FloatingActionButton(
        onPressed: () {
          deIncrementValue();
        },
        child: Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        incrementValue();
      },
      child: Icon(Icons.add),
    );
  }
}
