// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untitled/Screens/google_map_screen.dart';
// import firebase stuff
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var guidelinesMap = Map(); // map of locations with respective information

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseFirestore.instance
    .collection('Demo')
    .get()
    .then((QuerySnapshot qs) {
      var guidelinesList = qs.docs;

      // put documents into a map with the location name as the key
      for (var loc in guidelinesList) {
        guidelinesMap[loc.get("name")]=loc;
      }

      // example of accessing the map and getting a field
      for (var k in guidelinesMap.keys){
        print(k + ": " + guidelinesMap[k].get("description").toString());
      }
    });

  // for (var k in guidelinesList.keys) {
  //   print("Key : $k, value : ${guidelinesList[k].toString()}");
  // }

  runApp(MyApp());
}


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


