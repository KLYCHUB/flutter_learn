import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final data = "Design";
  final data2 = "Pofi in life...";
  final data3 = "NFT";
  final src = "https://picsum.photos/200";
  final image2 = "assets/png/KingPofi.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              onTap: () {},
              title: Text(data),
              subtitle: Text(data2),
              leading: Image.network(src),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: ListTile(
              title: Padding(
                  padding: ProjectPadding().vertical5Padding,
                  child: RandomImage(
                      imageHeigt: 100, image: image2)),
              subtitle: Padding(
                padding: ProjectPadding().vertical5Padding,
                child: Text(data3),
              ),
              leading: const Icon(Icons.monetization_on_outlined),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectPadding {
  final EdgeInsets vertical5Padding = const EdgeInsets.symmetric(vertical: 5);
}
