class ReviewModel {
  final String name;

  ReviewModel({required this.name});

  factory ReviewModel.fromJson(dynamic json) {
    return ReviewModel(name: json['content']['details']['name'] as String);
  }

  static List<ReviewModel> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return ReviewModel.fromJson(data);
    }).toList();
  }
}
