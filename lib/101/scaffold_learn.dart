import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FLUTTER LEARN")),
      body: const Center(child: Text("HOŞGELDİNİZ")),
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const SizedBox(
              //transform: Matrix4.skewY(0.5),
              height: 150,
              child: Center(
                child: Text(
                  "Ne Aramıştınız...",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
      drawer: Drawer(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.abc),
                    title: const Text("ANASAYFA"),
                    subtitle: const Text("Merhaba..."),
                  ),
                )
              ],
            );
          },
          itemCount: 10,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          items: const [
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
