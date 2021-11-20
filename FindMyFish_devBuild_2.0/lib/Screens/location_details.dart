//Page which displays the details regarding a location (changes for which ever location is chosen)

// ignore_for_file: prefer_const_constructors

//Import all necessary packages to run
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/main.dart';
import 'package:bulleted_list/bulleted_list.dart';

class LocationDetails extends StatelessWidget {
   LocationDetails({Key? key, required this.location}) : super(key: key);

  //storing the location that we want to display the information for
  final String location;

  final List<String> regulations = [];
  final List<String> species = [];

  void addRegulations () {

    for (var k in locationsMap[location].get("regulations")) {

      regulations.add(k.toString());

    }

    for (var l in locationsMap[location].get("species")) {

      species.add(l.toString());

    }

  }

  //Building the widget with the info stored in the database
  @override
  Widget build(BuildContext context) {

    addRegulations();

    // ignore: prefer_const_constructors
    return Scaffold(

        appBar: AppBar(
          title: Text(locationsMap[location].get("name").toString() + ", " + locationsMap[location].get("county").toString(), style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: SingleChildScrollView (
            child: Column(
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
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(location, style: TextStyle(decoration: TextDecoration.underline, fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 3, 10, 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(locationsMap[location].get("city").toString() + ', ' + locationsMap[location].get("state").toString())
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Status: " + locationsMap[location].get("status").toString()),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Regulations:", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BulletedList(
                          listItems: regulations,
                        )
                      ],
                    )
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Fish Species:", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BulletedList(
                          listItems: species,
                        )
                      ],
                    )
                )
              ],
            )
        )
    );

  }

}