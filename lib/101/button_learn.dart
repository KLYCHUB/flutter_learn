import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
              child:
                  Text("Touch", style: Theme.of(context).textTheme.titleMedium),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Tap")),
            IconButton(onPressed: () {}, icon: const Icon(Icons.snapchat_outlined)),
            FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.all(15)),
              child: const Text("Push", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 10),
            InkWell(onTap: () {}, child: const Text("Send")),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: const Padding(
                padding: EdgeInsets.only(
                    left: 20, right: 20, top: 15, bottom: 15),
                child: Text("Place Bid"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
