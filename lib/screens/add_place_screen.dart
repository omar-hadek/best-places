import 'package:flutter/material.dart';
import 'package:great_places_app/widgets/image_field.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({Key? key}) : super(key: key);
  static const routeName = 'add-places';

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  TextEditingController? _inputController;
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
                  ImageField(),
                ],
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('add place'),
          ),
        ],
      ),
    );
  }
}
