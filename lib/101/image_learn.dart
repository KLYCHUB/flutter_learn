import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            width: 100,
            child: Image.asset(ProjectImage().ts1461),
          ),
          SizedBox(
            height: 150,
            width: 100,
            child: Image.network(ProjectImage().randomImage,errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),),
          ),
          Container(),
        ],
      ),
    );
  }
}

class ProjectImage {
  final String ts = "assets/png/ts.png";
  final String ts1461 = "assets/png/1461.png";
  final String randomImage = "https://picsum.photos/200/300";
}
