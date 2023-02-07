import 'package:flutter/material.dart';
import 'package:flutter_learn/product/lang/langue_items.dart';

import '../product/counter_hello_button.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  void _counterUpdate(bool isIncrement) {
    if (isIncrement) {
      setState(() {
        _countValue += 1;
      });
    } else {
      setState(() {
        _countValue -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LngueItems().helloText)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deIncrementButton(),
        ],
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Placeholder(),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  Padding _deIncrementButton() {
    // ignore: avoid_print
    print("deneme");
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: FloatingActionButton(
        onPressed: () {
          _counterUpdate(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _counterUpdate(true);
      },
      child: const Icon(Icons.add),
    );
  }
}
