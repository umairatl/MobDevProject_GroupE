import 'package:flutter/material.dart';
import 'package:recipe_project/details.dart';
import '../model/recipe_list.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String rating;
  final String cookTime;
  final String thumbnailUrl;
  final Function() onTap;

  RecipeCard(
      {required this.title,
      required this.cookTime,
      required this.rating,
      required this.thumbnailUrl,
      required this.onTap});

  void navigateToDetails(BuildContext context, RecipeModel data) {
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => RecipeDetails(model: data))));
  }

  bool isLoading = true;
  late List<RecipeModel> listRecipes;
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: Offset(
                0.0,
                10.0,
              ),
              blurRadius: 10.0,
              spreadRadius: -6.0,
            ),
          ],
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // children:  [
            //          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 220,
                child: Image.network(thumbnailUrl),
              ),
              Text(title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15),
                ),
                // child: Row(
                //     children: List.generate(
                //   rating,
                //   (index) => IconButton(
                //     icon: Icon(Icons.star, size: 18),
                //     color: Colors.yellow,
                //     onPressed: () {},
                //   ),
                // )),
              ),
              // SizedBox(
              //   width: 300,
              //   child: Text('" $\\ "', textAlign: TextAlign.center),
              // )
            ],
          ),
          // alignment: Alignment.bottomLeft,
        ));
    // ));
  }
}
