import 'package:uuid/uuid.dart';
import 'dart:io';

const Uuid uuid = Uuid();

class PlaceLocation {
  final double latitude;
  final double longitude;
  final String address;

  const PlaceLocation({
    required this.latitude,
    required this.longitude,
    required this.address,
  });
}

class Place {
  final String id;
  final String title;
  final File image;
  // final PlaceLocation location;

  Place({
    String? id,
    required this.image,
    required this.title,
    // required this.location,
  }) : id = id ?? uuid.v4();
}
