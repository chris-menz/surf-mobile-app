import 'package:flutter/material.dart';

class CurrentSurfSpotId with ChangeNotifier {
  String _currentSurfSpotId = "";
  String get currentSurfSpotId => _currentSurfSpotId;

  void updateCurrentSurfSpotId(String surfSpotId){
    _currentSurfSpotId = surfSpotId;
    notifyListeners();
  }
}