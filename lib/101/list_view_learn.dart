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
        physics: BouncingScrollPhysics(),
        children: [
          Text(
            "BİSMİLLAH",
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          Divider(color: Colors.transparent),
          Container(height: 300, color: Colors.red),
          Divider(color: Colors.transparent),
          Container(height: 300, color: Colors.blue),
          Divider(color: Colors.transparent),
          SizedBox(
            height: 300,
            child: ListView(
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
          Divider(color: Colors.transparent),
          Icon(Icons.cancel, size: 30),
          Divider(color: Colors.transparent),
          _ListviewDemo()
        ],
      ),
    );
  }
}

class _ListviewDemo extends StatefulWidget {
  const _ListviewDemo({super.key});

  @override
  State<_ListviewDemo> createState() => __ListviewDemoState();
}

class __ListviewDemoState extends State<_ListviewDemo> {
  @override
  void dispose() {
    super.dispose();
    print("ÇIKTI");
  }

  void initState() {
    super.initState();
    print("ÇALIŞTI");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      color: Colors.blueGrey,
      child: Text(
        "Lifecycle Deneme",
        textAlign: TextAlign.center,
      ),
    );
  }
}
