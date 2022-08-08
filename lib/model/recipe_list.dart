class RecipeModel {
  final String name;
  final String images;
  final double rating;
  final String totalTime;

  RecipeModel(
      {required this.name,
      required this.images,
      required this.rating,
      required this.totalTime});

  factory RecipeModel.fromJson(dynamic json) {
    return RecipeModel(
        name: json['name'] as String,
        images: json['images'][0]['hostedLargeUrl'] as String,
        rating: json['rating'] as double,
        totalTime: json['name'] as String);
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
