class RecipeModel {
  final String id;
  final String name;
  final String category;
  final String instructions;
  final String imageUrl;
  final String area;
  final List<String> ingredients;
  final List<String> measures;
  final String youtubeUrl;

  RecipeModel({
    required this.id,
    required this.name,
    required this.category,
    required this.instructions,
    required this.imageUrl,
    required this.area,
    this.ingredients = const [],
    this.measures = const [],
    this.youtubeUrl = '',
  });

  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    List<String> ingredients = [];
    List<String> measures = [];

    for (int i = 1; i <= 20; i++) {
      final ingredient = json['strIngredient$i'];
      if (ingredient != null && ingredient.toString().trim().isNotEmpty) {
        ingredients.add(ingredient);
        measures.add(json['strMeasure$i'] ?? '');
      }
    }

    return RecipeModel(
      id: (json['idMeal'] ?? '').toString(),
      name: (json['strMeal'] ?? '').toString(),
      category: (json['strCategory'] ?? '').toString(),
      instructions: (json['strInstructions'] ?? '').toString(),
      imageUrl: (json['strMealThumb'] ?? '').toString(),
      area: (json['strArea'] ?? '').toString(),
      ingredients: ingredients,
      measures: measures,
      youtubeUrl: (json['strYoutube'] ?? '').toString(),
    );
  }
}
