import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_project/Presentation/Screens/Reviews/reviews.dart';
import 'package:recipe_project/details.dart';
import 'package:recipe_project/model/recipe_api.dart';
import 'package:recipe_project/model/recipe_list.dart';
import 'package:recipe_project/navigation/bottomNavBar.dart';
import 'package:recipe_project/widgets/recipe.dart';
import '../../../model/review_api.dart';
import '../../../model/review_list.dart';
import 'package:recipe_project/model/review_list.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isLoading = true;
  late List<RecipeModel> listRecipes;
  late List<RecipeModel> listRecipes2;
  TextEditingController controller = new TextEditingController();
  late List<ReviewModel> listReview;

  @override
  void initState() {
    super.initState();

    getRecipes();
    getReviews();
  }

  Future<void> getRecipes() async {
    try {
      listRecipes = await RecipeAPI.fetchRecipe();
      listRecipes2 = await RecipeAPI.fetchRecipe();
      setState(() {
        isLoading = false;
      });
    } catch (e, st) {
      listRecipes = [];
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Error"),
              content: Text("Cannot load data for recipes"),
            );
          },
        );
      }
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> getReviews() async {
    listReview = await ReviewAPI.fetchRecipe();
  }

  void navigateToDetails(BuildContext context, RecipeModel data) {
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => RecipeDetails(model: data))));
  }

  void searchRecipe(String query) {
    final suggestions = listRecipes2.where((recipe) {
      final recipeName = recipe.name.toLowerCase();
      final input = query.toLowerCase();
      return recipeName.contains(input);
    }).toList();
    setState(() => listRecipes = suggestions);
  }

  @override
  Widget build(BuildContext context) {
    const thepurple = Color(0xFF733FF1);
    const theblue = Color(0xff202032);
    const thewhite = Colors.white;

    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: thewhite,
        appBar: AppBar(
          elevation: 2,
          backgroundColor: theblue,
          title: Text("H O M E",
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold)),
        ),
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : SizedBox(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    SizedBox(
                      width: 350,
                      child: TextField(
                          controller: controller,
                          decoration: InputDecoration(
                              prefixIcon:
                                  const Icon(Icons.search, color: thepurple),
                              hintText: 'Search Recipe Title',
                              hintStyle: TextStyle(color: theblue),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      const BorderSide(color: thepurple))),
                          onChanged: searchRecipe),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Menu List',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: listRecipes.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            child: RecipeCard(
                              onTap: () {
                                navigateToDetails(context, listRecipes[index]);
                              },
                              title: listRecipes[index].name,
                              cookTime: listRecipes[index].totalTime,
                              rating: listRecipes[index].rating.toString(),
                              thumbnailUrl: listRecipes[index].images,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'User Reviews',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: listReview.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            child: ReviewCard(
                              name: listReview[index].name,
                              rating: listReview[index].rating,
                              comment: listReview[index].comment,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
        bottomNavigationBar: FadeIn(
          child: BottomNa(),
        ));
  }
}
