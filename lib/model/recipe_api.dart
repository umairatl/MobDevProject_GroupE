import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipe_project/model/recipe_list.dart';

class RecipeAPI {
  static Future<List<RecipeModel>> fetchRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "9abf0e5683mshf0de64648d9a8e3p157a51jsn7d6e7c89cf1e",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    print('STATUSSSS RECIPE');
    print(response.statusCode);
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
