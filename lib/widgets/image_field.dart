import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageField extends StatefulWidget {
  const ImageField({Key? key}) : super(key: key);

  @override
  _ImageFieldState createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  File? _storedImage;

  Future<void> takePicture() async {
    final picker = ImagePicker();
    final imageFile =
        await picker.pickImage(source: ImageSource.camera, maxWidth: 600.0);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: 200.0,
            height: 200.0,
            child: _storedImage != null
                ? Image.file(
                    _storedImage!,
                    fit: BoxFit.cover,
                  )
                : Text('no image yet'),
            alignment: Alignment.center),
        SizedBox(width: 10.0),
        ElevatedButton.icon(
          onPressed: ()=>takePicture(),
          icon: Icon(Icons.camera),
          label: Text('take a picture'),
        ),
      ],
    );
  }
}
