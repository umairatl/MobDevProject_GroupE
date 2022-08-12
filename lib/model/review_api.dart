import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipe_project/model/review_list.dart';

class ReviewAPI {
  static Future<List<ReviewModel>> fetchRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/reviews/list', {
      "offset": "0",
      "globalId:": "a8d6747a-bfaa-46a7-92fb-892e3f76b264",
      "limit": "20",
    });

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "9abf0e5683mshf0de64648d9a8e3p157a51jsn7d6e7c89cf1e",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    if (response.statusCode != 200) {
      throw Exception("Error happened");
    }

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['reviews']) {
      _temp.add(i);
    }

    return ReviewModel.reviewFromSnapshot(_temp);
  }
}
