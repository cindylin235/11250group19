//Application bloc allowing for us to handle the user's location

import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/geolocator_service.dart';

class ApplicationBloc with ChangeNotifier {

  final geoLocatorService = GeolocatorService();

  //Variables
  late Position currentLocation;

  ApplicationBloc() {
    setCurrentLocation();
  }

  setCurrentLocation() async {

    currentLocation = await geoLocatorService.getCurrentLocation();
    notifyListeners();

  }


}