import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({super.key});

  final IconSize iconSize = IconSize();
  final IconColor iconColor = IconColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.headphones,
              size: iconSize.iconSmall,
              color: iconColor.redAccent,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.snapchat_outlined,
              size: iconSize.iconSmall,
              color: iconColor.yellowAccent,
            ),
          ),
        ],
      ),
    );
  }
}

class IconSize {
  final double iconSmall = 40;
  final double iconSmall2x = 80;
}

class IconColor {
  final Color redAccent = Colors.redAccent;
  final Color yellowAccent = Colors.yellowAccent;
}
