import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                color: Colors.amber,
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.red,
              ),
              Positioned(
                top: 200,
                left: MediaQuery.of(context).size.width - 50,
                height: 50,
                width: 50,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
