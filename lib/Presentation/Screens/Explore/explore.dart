import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_project/Presentation/Components/loader.dart';

import '../../../navigation/bottomNavBar.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    const thepurple = Color(0xFF733FF1);
    const theblue = Color(0xff202032);
    const thewhite = Colors.white;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: thewhite,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: theblue,
        title: Text("E X P L O R E",
            style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold)),
      ),
      
    );
  }
}
