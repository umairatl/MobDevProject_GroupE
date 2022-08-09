import 'package:flutter/material.dart';
import 'package:recipe_project/details.dart';

import '../model/recipe_list.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String rating;
  final String cookTime;
  final String thumbnailUrl;

  RecipeCard({
    required this.title,
    required this.cookTime,
    required this.rating,
    required this.thumbnailUrl,
  });

  void navigateToDetails(BuildContext context, RecipeModel data) {
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => RecipeDetails(model: data))));
  }

  bool isLoading = true;
  late List<RecipeModel> listRecipes;
  late List<RecipeModel> _serchResult = [];
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      // padding: const EdgeInsets.only(left: 5.0, bottom: 25.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              left: 10,
              top: 10,
              bottom: 15,
            ),
            width: 290,
            child: Column(
              children: <Widget>[
                Image.network(thumbnailUrl),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "$title\n",
                                    style: TextStyle(color: Colors.black)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
