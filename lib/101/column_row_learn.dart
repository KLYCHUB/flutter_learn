import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                    child: Container(color: const Color.fromARGB(255, 126, 23, 15))),
                Expanded(child: Container(color: Colors.blue)),
                Expanded(
                    child: Container(color: const Color.fromARGB(255, 126, 23, 15))),
                Expanded(child: Container(color: Colors.blue)),
              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("GS"),
                Text(" 1"),
                Text("TS"),
                Text("2"),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                    child: Container(color: const Color.fromARGB(255, 223, 23, 23))),
                Expanded(child: Container(color: Colors.yellow)),
                Expanded(
                    child: Container(color: const Color.fromARGB(255, 223, 23, 23))),
                Expanded(child: Container(color: Colors.yellow)),
              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("05.02.2023"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
