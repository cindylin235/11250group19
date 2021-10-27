// ignore_for_file: prefer_const_constructors

//Import all necessary packages to run
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/Screens/location_details.dart';
import 'package:untitled/main.dart';

//Creating widget for our Google Maps API
class GoogleMapScreen extends StatefulWidget {
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

//Adding content to our widget
class _GoogleMapScreenState extends State<GoogleMapScreen> {

  //Creating a set of markers that we will store all of our location to display on screen
  Set<Marker> _markers = {};
  late BitmapDescriptor mapMarker;

  @override
  void initState() {
    super.initState();
    setCustomMarker();
  }

  //Importing a custom image for our markers
  void setCustomMarker() async {
      mapMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'Assets/new2.png');
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
      body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: _markers,
          initialCameraPosition: CameraPosition(
              target: LatLng(29.651634, -82.324829),
              zoom: 12.5,
          )
      )
    );
  }
}

