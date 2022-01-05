import 'package:flutter/material.dart';
import 'package:great_places_app/widgets/image_field.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({ Key? key }) : super(key: key);

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('add places '),), 
       body: Column(children: [
         TextField(
           decoration: InputDecoration(
             hintText: 'Enter the title of the place',
           ),
         ),
         ImageField(),
       ],)
    );
  }
}