import 'package:flutter/material.dart';
import 'package:great_places_app/providers/great_places.dart';
import 'package:great_places_app/screens/add_place_screen.dart';
import 'package:provider/provider.dart';

class GreatPlacesScreen extends StatelessWidget {
  const GreatPlacesScreen({Key? key}) : super(key: key);
  static const routeName = '/great-places';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('great places '),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Consumer<GreatPlaces>(
        child: Text('no places added yet , start adding some'),
        builder: (ctx, places, ch) => places.items.length <= 0
            ? Text('no place')
            : ListView.builder(
                itemCount: places.items.length,
                itemBuilder: (context, i) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(
                      places.items[i].image,
                    ),
                  ),
                  title: Text(places.items[i].title),
                ),
              ),
      ),
    );
  }
}
