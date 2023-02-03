import 'package:flutter/material.dart';

class StatelessLearn extends StatefulWidget {
  const StatelessLearn({super.key});

  @override
  State<StatelessLearn> createState() => _StatelessLearnState();
}

class _StatelessLearnState extends State<StatelessLearn> {
  @override
  Widget build(BuildContext context) {
    var text2 = "Selamun Aleyküm";
    var text3 = "Aleyküm Selam";
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomContanier(),
          TitleTextWidget(text: text2),
          TitleTextWidget(text: text3),
          const CustomContanier(),
        ],
      ),
    );
  }
}

class CustomContanier extends StatelessWidget {
  const CustomContanier({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
