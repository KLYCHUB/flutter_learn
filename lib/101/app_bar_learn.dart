import 'package:flutter/material.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({super.key});
  final String _wellcome = "Wellcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _wellcome,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left_sharp)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notification_add)),
        ],
      ),
    );
  }
}
