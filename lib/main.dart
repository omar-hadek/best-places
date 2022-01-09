import 'package:flutter/material.dart';
import 'package:great_places_app/screens/add_place_screen.dart';
import 'package:great_places_app/screens/great_places_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'best places',
      home: GreatPlacesScreen(),
      routes: {
        AddPlaceScreen.routeName: (context) => AddPlaceScreen(),
      },
    );
  }
}
