//Retrieving user's location to display area according to user's location

import 'package:geolocator/geolocator.dart';

class GeolocatorService {

  Future<Position> getCurrentLocation() async {

    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

  }

}