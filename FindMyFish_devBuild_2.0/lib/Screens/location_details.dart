// ignore_for_file: prefer_const_constructors

//Import all necessary packages to run
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/main.dart';

class LocationDetails extends StatelessWidget {
  const LocationDetails({Key? key, required this.location}) : super(key: key);

  //storing the location that we want to display the information for
  final String location;

  //Building the widget with the info stored in the database
  @override
  Widget build(BuildContext context) {

    // ignore: prefer_const_constructors
    return Scaffold(

        appBar: AppBar(
          title: Text(locationsMap[location].get("name").toString(), style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.network(
                  locationsMap[location].get("image").toString(),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                num.parse(loadingProgress.expectedTotalBytes.toString())
                            : null,
                      ),
                    );
                  },
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                  semanticLabel: 'Image of' + location,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(location, style: TextStyle(decoration: TextDecoration.underline, fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(locationsMap[location].get("description").toString())
              ),
            )
          ],
        )

    );

  }

}