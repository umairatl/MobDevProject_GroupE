import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_project/Presentation/Components/loader.dart';

import '../../../navigation/bottomNavBar.dart';

class explore extends StatefulWidget {
  @override
  _exploreState createState() => _exploreState();
}

class _exploreState extends State<explore> {
  @override
  Widget build(BuildContext context) {
    const thepurple = Color(0xFF733FF1);
    const theblue = Color(0xff202032);
    const thewhite = Colors.white;
    Size size = MediaQuery.of(context).size;

    
    return Scaffold(
      backgroundColor: thewhite,
      body: Container(),
      bottomNavigationBar: FadeInUp(child: BottomNa()),
    );
  }
}
