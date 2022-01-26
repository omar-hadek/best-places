import 'package:flutter/foundation.dart';
import 'dart:io';

import '../models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(String placeTitle, File? placeImage) {
    if (placeImage != null) {
      final newPlace = Place(
          id: DateTime.now().toString(),
          title: placeTitle,
          image: placeImage,
          location: null);

      _items.add(newPlace);
      notifyListeners();
    }
  }
}