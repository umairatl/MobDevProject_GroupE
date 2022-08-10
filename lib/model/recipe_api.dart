import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipe_project/model/recipe_list.dart';

class RecipeAPI {
  static Future<List<RecipeModel>> fetchRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "3a7186e0e6msh58c26f19e5e5086p1e45a3jsn6f803287f502",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    if (response.statusCode != 200) {
      throw Exception("Error happen");
    }
    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i);
    }

    return RecipeModel.recipesFromSnapshot(_temp);
  }
}
