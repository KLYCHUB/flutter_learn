import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(onPressed: () {
            _tabController.animateTo(_MyTabViews.home.index);
          }),
          bottomNavigationBar: BottomAppBar(
            notchMargin: 10,
            child: TabBar(
                padding: EdgeInsets.zero,
                onTap: (int value) {},
                controller: _tabController,
                tabs:
                    _MyTabViews.values.map((e) => Tab(text: e.name)).toList()),
          ),
          appBar: AppBar(
            bottom: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: "TAB 1"),
                Tab(text: "TAB 2"),
                Tab(text: "TAB 3"),
                Tab(text: "TAB 4"),
              ],
            ),
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              Container(color: Colors.amber),
              Container(color: Colors.green),
              Container(color: Colors.blue),
              Container(color: Colors.deepPurple),
            ],
          ),
        ));
  }
}

enum _MyTabViews { home, setting, favorite, profile }

extension _MyTabViewExtantion on _MyTabViews {}
