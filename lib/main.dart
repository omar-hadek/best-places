import 'package:flutter/material.dart';
import 'package:great_places_app/providers/great_places.dart';
import 'package:great_places_app/screens/add_place_screen.dart';
import 'package:great_places_app/screens/great_places_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GreatPlaces>(
      create: (context) => GreatPlaces(),
      child: MaterialApp(
        title: 'best places',
        home: GreatPlacesScreen(),
        routes: {
          AddPlaceScreen.routeName: (context) => AddPlaceScreen(),
          GreatPlacesScreen.routeName: (context) => GreatPlacesScreen()
        },
      ),
    );
  }
}
