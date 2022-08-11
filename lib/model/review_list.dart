class ReviewModel {
  final String name;
  final int rating;
  final String comment;

  ReviewModel({
    required this.name,
    required this.rating,
    required this.comment,
  });

  factory ReviewModel.fromJson(dynamic json) {
    return ReviewModel(
      name: json['user']['displayName'] as String,
      rating: json['rating'] as int,
      comment: json['text'] as String,
    );
  }

  static List<ReviewModel> reviewFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return ReviewModel.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe {$name, rating: $rating, comment: $comment}';
  }
}
