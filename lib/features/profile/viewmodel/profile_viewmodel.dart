import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../authentification/viewmodel/login_viewmodel.dart';

class ProfileViewModel extends ChangeNotifier {
  final LoginViewModel _loginVM;

  ProfileViewModel(this._loginVM);

  bool _isProcessing = false;
  bool get isProcessing => _isProcessing;

  void _setProcessing(bool value) {
    _isProcessing = value;
    notifyListeners();
  }

  Future<String?> pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    try {
      final XFile? image = await picker.pickImage(
        source: source,
        maxWidth: 512,
        maxHeight: 512,
        imageQuality: 80,
      );
      
      if (image != null) {
        _setProcessing(true);
        await _loginVM.updateProfileImage(image.path);
        _setProcessing(false);
        return image.path;
      }
      return null;
    } catch (e) {
      print('Error selecting image: $e');
      _setProcessing(false);
      return null;
    }
  }

  Future<bool> updateName(String newName, String currentName) async {
    if (newName.isNotEmpty && newName != currentName) {
      _setProcessing(true);
      await _loginVM.updateDisplayName(newName);
      _setProcessing(false);
      return true;
    }
    return false;
  }

  Future<void> logout() async {
    await _loginVM.logout();
  }
}
