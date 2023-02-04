import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, required this.imageHeigt, required this.image});
  final double imageHeigt;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: imageHeigt,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
