// ignore_for_file: prefer_const_constructors

//Import all necessary packages to run
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/Screens/location_details.dart';
import 'package:untitled/main.dart';
import 'package:untitled/location_service.dart';
import 'package:geolocator/geolocator.dart';

//Creating widget for our Google Maps API
class GoogleMapScreen extends StatefulWidget {
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

//Adding content to our widget
class _GoogleMapScreenState extends State<GoogleMapScreen> {

  Completer<GoogleMapController> _controller = Completer();

  TextEditingController _searchController = TextEditingController();

  //Creating a set of markers that we will store all of our location to display on screen
  Set<Marker> _markers = {};
  late BitmapDescriptor mapMarker;

  var geoLocator = Geolocator();

  @override
  void initState() {
    super.initState();
    setCustomMarker();
  }

  //Importing a custom image for our markers
  void setCustomMarker() async {
      mapMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'Assets/new2.png');
  }

 void locationPosition() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    Position currentPosition = position;

    LatLng latLatPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition = new CameraPosition(target: latLatPosition, zoom: 12.5);
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
 }

  //function to add make a marker for each location that we in the databse
  void _onMapCreated(GoogleMapController controller) {
      setState(() {

        for (var k in locationsMap.keys) {
          _markers.add(
            Marker(
                markerId: MarkerId(locationsMap[k].get("name").toString()),
                position: LatLng(double.parse(locationsMap[k].get("latitude").toString()), double.parse(locationsMap[k].get("longitude").toString())),
                icon: mapMarker,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LocationDetails(location: k)
                    ),
                ),
              infoWindow: InfoWindow(
                title: locationsMap[k].get("name").toString(),
                //snippet: guidelinesMap[k].get("city").toString() + ", " + guidelinesMap[k].get("state").toString(),
              ),
            )
          );
        }

      });
  }

  //Building the main Google Maps content you see on screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: TextFormField(
                controller: _searchController,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(hintText: 'Search by City'),
                onChanged: (value) {
                  print(value);
                },
              )),
              IconButton(
                  onPressed: () async {
                    var place = await LocationService().getPlace(_searchController.text);
                    _goToPlace(place);
                  },
                  icon: Icon(Icons.search),
              ),
            ],
          ),
          Expanded(
              child: GoogleMap(
                  mapType: MapType.normal,
                  myLocationButtonEnabled: true,
                  myLocationEnabled: true,
                  zoomGesturesEnabled: true,
                  zoomControlsEnabled: true,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(29.644050, -82.348408),
                    zoom: 12.5,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                    _onMapCreated(controller);
                    locationPosition();
                  },
                  markers: _markers,
              )
          )
        ],
      )
    );
  }

  Future<void> _goToPlace(Map<String, dynamic> place) async {
    final double lat = place['geometry']['location']['lat'];
    final double lng = place['geometry']['location']['lng'];

    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, lng), zoom: 12.5)
      ),
    );

  }

}

