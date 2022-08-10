import 'package:flutter/material.dart';
import 'package:recipe_project/homepage.dart';

class searchBox extends StatefulWidget {
  const searchBox({super.key});

  @override
  State<searchBox> createState() => _searchBoxState();
}

class _searchBoxState extends State<searchBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: (Icon(Icons.search)),
          hintText: 'Find your recipe',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade500),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
          ),
        ),
      ),
    );

  
  }
}
