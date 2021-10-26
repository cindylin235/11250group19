// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/Screens/bivens_arm.dart';
import 'package:untitled/Screens/lake_alice.dart';

class GoogleMapScreen extends StatefulWidget {
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {

  Set<Marker> _markers = {};
  late BitmapDescriptor mapMarker;

  @override
  void initState() {
    super.initState();
    setCustomMarker();
  }

  void setCustomMarker() async {
      mapMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'Assets/new2.png');
  }

  void _onMapCreated(GoogleMapController controller) {
      setState(() {
        _markers.add(
          Marker(
              markerId: MarkerId('Lake_Alice'),
              position: LatLng(29.642633,-82.361358),
              icon: mapMarker,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LakeAlice())
              ),
              infoWindow: InfoWindow(
                title: 'Lake Alice',
                snippet: 'test spot 1',
              ),
          ),
        );
        _markers.add(
          Marker(
            markerId: MarkerId('Bivens Arm'),
            position: LatLng(29.625549,-82.346014),
            icon: mapMarker,
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BivensArm())
            ),
            infoWindow: InfoWindow(
              title: 'Bivens Arm',
              snippet: 'test spot 2',
            ),
          ),
        );
      });
  }

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

