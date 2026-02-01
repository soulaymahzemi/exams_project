class ChefModel {
  final String id;
  final String name;
  final String specialty;
  final String imageUrl;
  final String country;
  final int recipesCount;
  final double rating;
  final bool isFollowing;

  ChefModel({
    required this.id,
    required this.name,
    required this.specialty,
    required this.imageUrl,
    required this.country,
    this.recipesCount = 0,
    this.rating = 4.5,
    this.isFollowing = false,
  });

  factory ChefModel.fromJson(Map<String, dynamic> json) {
    return ChefModel(
      id: (json['idMeal'] ?? '').toString(),
      name: (json['strArea'] ?? 'Chef').toString(),
      specialty: (json['strCategory'] ?? 'General').toString(),
      imageUrl: (json['strMealThumb'] ?? '').toString(),
      country: (json['strArea'] ?? 'International').toString(),
      recipesCount: 10 + (json['idMeal'].hashCode % 50),
      rating: 3.5 + ((json['idMeal'].hashCode % 15) / 10),
    );
  }
}
