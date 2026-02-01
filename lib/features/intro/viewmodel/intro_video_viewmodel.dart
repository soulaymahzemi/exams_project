import 'package:flutter/material.dart';

class IntroVideoViewModel extends ChangeNotifier {
  // État de l'image de fond
  String _backgroundImage = 'assets/images/background.jpg';
  
  String get backgroundImage => _backgroundImage;

  // Méthode pour changer l'image si nécessaire
  void changeBackgroundImage(String newImagePath) {
    _backgroundImage = newImagePath;
    notifyListeners();
  }
}
