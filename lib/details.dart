import 'package:flutter/material.dart';
import 'package:recipe_project/model/recipe_list.dart';
import 'package:url_launcher/url_launcher.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.network(
                widget.model.images,
              ),
            ),
            Text(widget.model.name),
            SizedBox(height: 10),
            Text(widget.model.totalTime),
            SizedBox(height: 15),
            Text(widget.model.totalServing.toString()),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: _openRecipe,
              child: const Text('Open Recipe on Browser'),
            )
          ],
        ),
      ),
    );
  }
}
