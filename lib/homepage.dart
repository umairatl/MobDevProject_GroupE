import 'package:flutter/material.dart';
import 'package:recipe_project/model/recipe_api.dart';
import 'package:recipe_project/model/recipe_list.dart';
import 'package:recipe_project/widgets/recipe.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late List<RecipeModel> listRecipes;
  bool isLoading = true;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text('Food Recipe Test')
            ],
          ),
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: listRecipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(
                      title: listRecipes[index].name,
                      cookTime: listRecipes[index].totalTime,
                      rating: listRecipes[index].rating.toString(),
                      thumbnailUrl: listRecipes[index].images);
                },
              ));
  }
}
