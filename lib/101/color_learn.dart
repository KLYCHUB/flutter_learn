import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 20,
            color: Colors.amberAccent,
            child: Text(
              "ErenKLYC Flutter Learn",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Theme.of(context).indicatorColor),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorsItem {
  //Final yaparsak ColorsItem.deepPurple olmaz...
  static const Color deepPurple = Colors.deepPurple;
}
