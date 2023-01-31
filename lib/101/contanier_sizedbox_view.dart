import 'package:flutter/material.dart';

class ContanierSizedboxLearn extends StatelessWidget {
  const ContanierSizedboxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              height: 300,
              width: 200,
              child: Text("a" * 500),
            ),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("a" * 200),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 50,
              constraints: const BoxConstraints(
                maxWidth: 150,
                minWidth: 100,
                maxHeight: 150,
              ),
              decoration: ProjectUtility.boxDecoration,
              child: Center(child: Text("ErenKLYC")),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Colors.deepPurple, Colors.pinkAccent],
    ),
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(.50),
        offset: Offset(0.5, 5),
      ),
    ],
  );
}
