import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/color_learn.dart';
import 'core/my_collection_demos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learn',
      theme: ThemeData.dark().copyWith(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.blueGrey[900],
          border: const OutlineInputBorder(),
          floatingLabelStyle: const TextStyle(
            color: Colors.redAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.white),
        indicatorColor: ColorsItem.deepPurple,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      //home: const LifecycleLearn(message: "ErenKLYC"),
      home: const MyCollectionDemos(),
    );
  }
}
