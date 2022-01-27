import 'package:flutter/foundation.dart';
import 'package:great_places_app/helpers/db_helper.dart';
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
      DBHelper.insert('places', {
        'id': newPlace.id,
        'title': newPlace.title,
        'image': newPlace.image.path
      });
    }
  }
}
