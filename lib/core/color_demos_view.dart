import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key});

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  late Color _backgroundColor = Colors.transparent;

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOnTap,
        items: const [
          BottomNavigationBarItem(
            icon: _ColorContanier(colors: Colors.red),
            label: "Red",
          ),
          BottomNavigationBarItem(
            icon: _ColorContanier(colors: Colors.green),
            label: "Green",
          ),
          BottomNavigationBarItem(
            icon: _ColorContanier(colors: Colors.blue),
            label: "Blue",
          ),
        ],
      ),
    );
  }

  void _colorOnTap(int value) {
    if (value == _ColorIndex.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _ColorIndex.green.index) {
      changeBackgroundColor(Colors.green);
    } else if (value == _ColorIndex.blue.index) {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _ColorIndex { red, green, blue }

class _ColorContanier extends StatelessWidget {
  const _ColorContanier({
    required this.colors,
  });

  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(height: 10, width: 10, color: colors);
  }
}
