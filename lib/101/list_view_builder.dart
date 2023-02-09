import 'package:flutter/material.dart';

class ListviewBuilder extends StatefulWidget {
  const ListviewBuilder({super.key});

  @override
  State<ListviewBuilder> createState() => _ListviewBuilderState();
}

class _ListviewBuilderState extends State<ListviewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 200, color: Colors.amber),
              ),
            ],
          );
        },
        itemCount: 10,
      ),
    );
  }
}
