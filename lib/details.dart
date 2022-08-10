import 'package:flutter/material.dart';
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
            Container(
                child: ElevatedButton(
                    onPressed: () {
                      var url = widget.model.urlMenu;
                    },
                    child: new Text('Open Recipe')))
          ],
        ),
      ),
    );
  }
}
