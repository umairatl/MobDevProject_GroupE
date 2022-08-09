class RecipeModel {
  final String name;
  final String images;
  final double rating;
  final String totalTime;
  final int totalServing;
  final String urlMenu;

  RecipeModel(
      {required this.name,
      required this.images,
      required this.rating,
      required this.totalTime,
      required this.totalServing,
      required this.urlMenu});

  factory RecipeModel.fromJson(dynamic json) {
    return RecipeModel(
        name: json['name'] as String,
        images: json['images'][0]['hostedLargeUrl'] as String,
        rating: json['rating'] as double,
        totalTime: json['totalTime'] as String,
        totalServing: json['numberOfServings'] as int,
        urlMenu: json['directionsUrl'] as String);
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
