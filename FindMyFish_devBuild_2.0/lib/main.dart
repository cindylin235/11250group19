//Main page of the application allowing us to access various features of our application

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

//Import all necessary packages to run
import 'package:flutter/material.dart';
import 'package:untitled/Screens/google_map_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:untitled/application_bloc.dart';
import 'package:untitled/menu_item.dart';
import 'package:untitled/menu_items.dart';
import 'package:untitled/Screens/endanger_species.dart';
import 'package:untitled/Screens/report_violation.dart';

//List and Map to store our Firebase data
var locationsMap = Map(); // map of locations with respective information
var locationsList;

//Storing database values in our map + running main app
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseFirestore.instance
    .collection('Guidelines')
    .get()
    .then((QuerySnapshot qs) {
      locationsList = qs.docs;

      // put documents into a map with the location name as the key
      for (var loc in locationsList) {
        locationsMap[loc.get("name")]=loc;
      }

    });

  runApp(MyApp());
}

//Our main widget that we see when starting the application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApplicationBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: HomePage(),
      ),
    );
  }
}

//Extension of main-widget, where we will add the information you see on the screen.
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: [
          //Option button located at the top right of the main screen
          PopupMenuButton<MenuItem>(
            onSelected: (item) => whenSelected (context, item),
            itemBuilder: (context) => [
              ...MenuItems.items.map(buildItem).toList(),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'FindMyFish Demo',
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

  //Option menu located at top-right of main page
  PopupMenuItem<MenuItem> buildItem(MenuItem myItem) => PopupMenuItem<MenuItem>(
    value: myItem,
    child: Text(myItem.text),
  );

  //Function which triggers whenever the different menus are selected.
  void whenSelected(BuildContext context, MenuItem item){
    switch (item) {
      case MenuItems.itemESOTW:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EndangeredSpeciesScreen(),
          ),
        );
        break;

      case MenuItems.itemReportViolation:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ReportViolationScreen(),
          ),
        );
        break;
    }
  }

}


