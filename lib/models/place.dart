import 'dart:io';

class Place {
  String id;
  String title;
  File image;
  Location? location;
  Place(
      {required this.id,
      required this.title,
      required this.image,
      this.location});
}

class Location {
  String? adress;
  double? longitute;
  double? latitute;
}
