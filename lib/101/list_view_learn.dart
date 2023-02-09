import 'package:flutter/material.dart';

class ListviewLearn extends StatefulWidget {
  const ListviewLearn({super.key});

  @override
  State<ListviewLearn> createState() => _ListviewLearnState();
}

class _ListviewLearnState extends State<ListviewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Text(
            "BİSMİLLAH",
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const Divider(color: Colors.transparent),
          Container(height: 300, color: Colors.red),
          const Divider(color: Colors.transparent),
          Container(height: 300, color: Colors.blue),
          const Divider(color: Colors.transparent),
          SizedBox(
            height: 300,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  width: 100,
                  color: Colors.teal,
                ),
                Container(
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  width: 100,
                  color: Colors.teal,
                ),
                Container(
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  width: 100,
                  color: Colors.teal,
                ),
              ],
            ),
          ),
          const Divider(color: Colors.transparent),
          const Icon(Icons.cancel, size: 30),
          const Divider(color: Colors.transparent),
          const _ListviewDemo()
        ],
      ),
    );
  }
}

class _ListviewDemo extends StatefulWidget {
  // ignore: unused_element
  const _ListviewDemo({super.key});

  @override
  State<_ListviewDemo> createState() => __ListviewDemoState();
}

class __ListviewDemoState extends State<_ListviewDemo> {
  @override
  void dispose() {
    super.dispose();
    // ignore: avoid_print
    print("ÇIKTI");
  }

  // ignore: annotate_overrides
  void initState() {
    super.initState();
    // ignore: avoid_print
    print("ÇALIŞTI");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      color: Colors.blueGrey,
      child: const Text(
        "Lifecycle Deneme",
        textAlign: TextAlign.center,
      ),
    );
  }
}
