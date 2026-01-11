import 'package:flutter/material.dart';

class ArtistProfileProvider extends ChangeNotifier {
  bool _isFollowing = false;

  bool get isFollowing => _isFollowing;

  void toggleFollow() {
    _isFollowing = !_isFollowing;
    notifyListeners();
  }
}
