import 'package:flutter/material.dart';

class ImageField extends StatefulWidget {
  const ImageField({Key? key}) : super(key: key);

  @override
  _ImageFieldState createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Container(),
        ),
        IconButton(
          icon: Icon(Icons.camera),
          onPressed: () {},
        ),
      ],
    );
  }
}
