import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_project/counter_cubit.dart';
import 'package:recipe_project/details.dart';
import 'package:recipe_project/model/recipe_api.dart';
import 'package:recipe_project/model/recipe_list.dart';
import 'package:recipe_project/widgets/bottom_nav_bar.dart';
import 'package:recipe_project/widgets/recipe.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isLoading = true;
  late List<RecipeModel> listRecipes;
  late List<RecipeModel> _serchResult = [];
  TextEditingController controller = new TextEditingController();

  @override
  void initState() {
    super.initState();

    getRecipes();
  }

  Future<void> getRecipes() async {
    listRecipes = await RecipeAPI.fetchRecipe();
    setState(() {
      isLoading = false;
    });
    print(listRecipes);
  }

  void navigateToDetails(BuildContext context, RecipeModel data) {
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => RecipeDetails(model: data))));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 2.0),
            child: Icon(Icons.person),
          ),
        ],
      ),

//       body: isLoading
//           ? Center(child: CircularProgressIndicator())
//           : ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: listRecipes.length,
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     navigateToDetails(context, listRecipes[index]);
//                   },
//                   child: RecipeCard(
//                     title: listRecipes[index].name,
//                     cookTime: listRecipes[index].totalTime,
//                     rating: listRecipes[index].rating.toString(),
//                     thumbnailUrl: listRecipes[index].images,
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }

      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listRecipes.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    navigateToDetails(context, listRecipes[index]);
                  },
                  child: RecipeCard(
                    title: listRecipes[index].name,
                    cookTime: listRecipes[index].totalTime,
                    rating: listRecipes[index].rating.toString(),
                    thumbnailUrl: listRecipes[index].images,
                  ),
                );
              },
            ),
    );
  }
}













          // child: isLoading
          //     ? Center(child: CircularProgressIndicator())
          //     : ListView.builder(
          //         scrollDirection: Axis.horizontal,
          //         itemCount: listRecipes.length,
          //         itemBuilder: (context, index) {
          //           return GestureDetector(
          //             onTap: () {
          //               navigateToDetails(context, listRecipes[index]);
          //             },
          //             child: RecipeCard(
          //               title: listRecipes[index].name,
          //               cookTime: listRecipes[index].totalTime,
          //               rating: listRecipes[index].rating.toString(),
          //               thumbnailUrl: listRecipes[index].images,
          //             ),
          //           );
          //         },
          //       ),
