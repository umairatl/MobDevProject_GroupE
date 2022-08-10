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
    final Uri _url = Uri.parse(widget.model.urlMenu);

    Future<void> _openRecipe() async {
      if (!await launchUrl(_url)) {
        throw 'Could not open the recipe';
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Details'),
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
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.model.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.teal.shade600),
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
                  color: Colors.green[200],
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
                  color: Colors.green[200],
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
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
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
