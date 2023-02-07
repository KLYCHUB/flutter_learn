import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.98);
  int _currentIndex = 0;

  void _pageIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        //mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(_currentIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.linear);
            },
            child: const Icon(Icons.chevron_left),
          ),
          Padding(
            padding: _ButtonPadding.padding8,
            child: FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.linear);
              },
              child: const Icon(Icons.chevron_right),
            ),
          )
        ],
      ),
      body: PageView(
        padEnds: false,
        controller: _pageController,
        onPageChanged: _pageIndex,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.white),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(milliseconds: 500);
}

class _ButtonPadding {
  static const padding8 = EdgeInsets.all(8.0);
}
