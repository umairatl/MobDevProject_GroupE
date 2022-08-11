import 'package:flutter/material.dart';
import 'package:recipe_project/Presentation/Screens/Home/homepage.dart';
import 'package:recipe_project/Presentation/Screens/Onboarding/onboarding.dart';
import 'package:recipe_project/Presentation/Screens/User/profile_screen.dart';
import 'package:recipe_project/Presentation/Screens/Explore/explore.dart';
import 'Presentation/Routes/routes_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Onboarding(),
      onGenerateRoute: RouteGenerator().generateRoute,
      routes: {
        '/homepage': (context) => Homepage(),
        '/explore': (context) => explore(),
        '/user': (context) => user(),
      },
    );
  }
}
