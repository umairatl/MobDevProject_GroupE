import 'package:flutter/material.dart';
import 'package:recipe_project/details.dart';
import 'package:recipe_project/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Homepage(),
      // routes: {
      //   '/recipeDetails': (context) => recipeDetails(),
      // }
    );
  }
}
