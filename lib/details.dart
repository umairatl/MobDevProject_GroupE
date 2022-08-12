import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:recipe_project/model/recipe_list.dart';

class RecipeDetails extends StatefulWidget {
  const RecipeDetails({required this.model, Key? key}) : super(key: key);
  final RecipeModel model;

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    const thepurple = Color(0xFF733FF1);
    const theblue = Color(0xff202032);
    const thewhite = Colors.white;

    final Uri _url = Uri.parse(widget.model.urlMenu);

    Future<void> _openRecipe() async {
      if (!await launchUrl(_url)) {
        throw 'Could not open the recipe';
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theblue,
        title: const Text(
          'Recipe Details',
          style: TextStyle(
            color: thewhite,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // Container(
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(68),
                bottomRight: Radius.circular(68),
              ),
              child: Image.network(
                widget.model.images,
                width: 400.0,
                fit: BoxFit.fill,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.model.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25, color: theblue),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.model.description,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 15),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.timer_rounded,
                  color: thepurple,
                  size: 24,
                ),
                SizedBox(width: 10),
                Text(
                  widget.model.totalTime,
                  style: TextStyle(fontSize: 18),
                )
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.food_bank_outlined,
                  color: thepurple,
                  size: 24,
                ),
                SizedBox(width: 10),
                Text(
                  widget.model.totalServing.toString(),
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 8),
                Text(
                  'people',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            )),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: _openRecipe,
                child: const Text(
                  'Open Recipe on Yummly',
                  style: TextStyle(fontSize: 16, color: thewhite),
                ),
                style: ElevatedButton.styleFrom(
                  // backgroundColor: thepurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
