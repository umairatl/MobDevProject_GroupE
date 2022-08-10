class RecipeModel {
  final String name;
  final String images;
  final double rating;
  final String totalTime;
  final int totalServing;
  final String urlMenu;
  final String description;

  RecipeModel(
      {required this.name,
      required this.images,
      required this.rating,
      required this.totalTime,
      required this.totalServing,
      required this.urlMenu,
      required this.description});

  factory RecipeModel.fromJson(dynamic json) {
    return RecipeModel(
        name: json['content']['details']['name'] as String,
        images:
            json['content']['details']['images'][0]['hostedLargeUrl'] as String,
        rating: json['content']['details']['rating'] as double,
        totalTime: json['content']['details']['totalTime'] as String,
        totalServing: json['content']['details']['numberOfServings'] as int,
        urlMenu: json['seo']['firebase']['appUrl'] as String,
        description: json['seo']['web']['meta-tags']['description'] as String);
  }

  static List<RecipeModel> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return RecipeModel.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe {name: $name, image: $images, rating: $rating, totalTime: $totalTime}';
  }
}
