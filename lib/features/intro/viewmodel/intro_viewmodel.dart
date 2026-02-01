import 'package:flutter/foundation.dart';

class     IntroViewmodel extends ChangeNotifier {
  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/imag.jpg",
      "title": "Complete Recipe",
      "subtitle": "Best apps to see and follow all recipes from around the world"
    },
    {
      "image": "assets/images/stock-photo-woman-writing-down-recipe.webp",
      "title": "Easy to Follow",
      "subtitle": "Step by step instructions for your favorite recipes"
    },
    {
      "image": "assets/images/depositphotos_71739227-stock-photo-food-and-cooking-app-on.webp",
      "title": "Discover New Foods",
      "subtitle": "Explore more than 200++ recipes easily"
    },
  ];

  int _currentPage = 0;

  int get currentPage => _currentPage;

  void setPage(int index) {
    _currentPage = index;
    notifyListeners();
  }

  bool get isLastPage => _currentPage == onboardingData.length - 1;
}
