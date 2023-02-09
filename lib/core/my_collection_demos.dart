import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    _items = [
      CollectionModel(
          imgPath: "assets/png/KingPofi.png", title: "MY ARTS 1", pirice: 4),
      CollectionModel(
          imgPath: "assets/png/KingPofi.png", title: "MY ARTS 2", pirice: 4),
      CollectionModel(
          imgPath: "assets/png/KingPofi.png", title: "MY ARTS 3", pirice: 4),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: PaddingUtility().paddingAll10,
            child: _CatagoryCard(model: _items[index]),
          );
        },
      ),
    );
  }
}

class _CatagoryCard extends StatelessWidget {
  const _CatagoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: PaddingUtility().paddingAll40,
        child: Column(
          children: [
            Image.asset(_model.imgPath),
            Padding(
              padding: PaddingUtility().symetricVertical15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _CardText(text: _model.title),
                  _CardText(text: "${_model.pirice} ETH"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imgPath;
  final String title;
  final int pirice;

  CollectionModel(
      {required this.imgPath, required this.title, required this.pirice});
}

class _CardText extends StatelessWidget {
  const _CardText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontWeight: FontWeight.w500),
    );
  }
}

class PaddingUtility {
  final EdgeInsets paddingAll10 = const EdgeInsets.all(10.0);
  final EdgeInsets paddingAll40 = const EdgeInsets.all(40.0);
  final EdgeInsets symetricVertical15 =
      const EdgeInsets.symmetric(vertical: 15);
}
