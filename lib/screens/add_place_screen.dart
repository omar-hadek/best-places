import 'dart:io';
import 'package:flutter/material.dart';
import 'package:great_places_app/providers/great_places.dart';
import 'package:great_places_app/screens/great_places_screen.dart';
import 'package:great_places_app/widgets/image_field.dart';
import 'package:provider/provider.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({Key? key}) : super(key: key);
  static const routeName = 'add-places';

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _inputController = TextEditingController();
  File? _pickedImage;

  void _selectImage(File? pickedImage) {
    _pickedImage = pickedImage;
  }

  void _savePlace() {
    if (_inputController.text.isEmpty || _pickedImage == null) {
      return;
    } else {
      Provider.of<GreatPlaces>(context, listen: false)
          .addPlace(_inputController.text, _pickedImage);
      Navigator.of(context).pushNamed(GreatPlacesScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add New places'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      label: Text('enter your place'),
                    ),
                    controller: _inputController,
                  ),
                  ImageField(
                    onSelectImage: _selectImage,
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () => _savePlace(),
            icon: Icon(Icons.add),
            label: Text('add place'),
          ),
        ],
      ),
    );
  }
}
