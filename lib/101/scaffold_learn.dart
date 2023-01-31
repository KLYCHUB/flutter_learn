import 'package:flutter/material.dart';
import 'package:flutter_learn/101/contanier_sizedbox_view.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FLUTTER LEARN")),
      body: Center(child: Text("ErenKLYC")),
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 200,
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 100,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.flutter_dash), label: "Flutter"),
            BottomNavigationBarItem(
                icon: Icon(Icons.data_object_rounded), label: "Code"),
          ],
        ),
      ),
    );
  }
}
