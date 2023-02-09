import 'package:flutter/material.dart';

class NavigatorDetails extends StatefulWidget {
  const NavigatorDetails({super.key});

  @override
  State<NavigatorDetails> createState() => _NavigatorDetailsState();
}

class _NavigatorDetailsState extends State<NavigatorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).maybePop(true);
          },
          icon: const Icon(Icons.check),
          label: const Text("Onayla"),
        ),
      ),
    );
  }
}
