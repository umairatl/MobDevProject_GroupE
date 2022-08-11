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
    const thepurple = Color(0xFF733FF1);
    const theblue = Color(0xff202032);
    const thewhite = Colors.white;

    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        decoration: BoxDecoration(
          color: theblue,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: theblue,
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
                child: Image.network(thumbnailUrl,
                    loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                }),
              ),

              Text(title,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: thewhite,
                      overflow: TextOverflow.ellipsis)),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: thepurple,
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
