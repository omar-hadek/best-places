import 'package:flutter/material.dart';
import 'package:great_places_app/screens/add_place_screen.dart';

class GreatPlacesScreen extends StatelessWidget {
  const GreatPlacesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('great places '),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
          }, icon: Icon(Icons.add))
        ],
      ),body: Center(
        child: Text('great places'),
        
      )
    );
  }
}