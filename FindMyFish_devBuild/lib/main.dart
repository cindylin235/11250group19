// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untitled/Screens/google_map_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled/data_repository.dart';

final DataRepository repository = DataRepository();

void main() {
  runApp(const MyApp());
}

/*var listLocations;

var stringTest = repository.locations.get().then((QuerySnapshot qs) {
  listLocations = qs.docs;
});

var test = listLocations.elementAt(1).toString();*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Google Map Demo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'Press button in lower right corner to access the Map',
              style: TextStyle(
                  fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => GoogleMapScreen(),
            ),
        ),
        tooltip: 'Google Map',
        child: Icon(Icons.pin_drop_outlined),
      ),
    );
  }
}


