// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LakeAlice extends StatelessWidget {
  const LakeAlice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(

      appBar: AppBar(
        title: const Text("Lake Alice (University of Florida)", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset(
                'Assets/Lake-Alice-Gainesville-2006-34.jpg',
                width: 400,
                height: 300,
                fit: BoxFit.cover,
                semanticLabel: 'Image of Lake Alice',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Lake Alice', style: TextStyle(decoration: TextDecoration.underline, fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Lake Alice is a small lake on the University of Florida campus in Gainesville, Florida, United States. \n \n The lake is a widlife area and is one of the few areas in incorporated Gainesville where one may view live alligators. The lake also harbors a population of Florida sofshell turtles.')
            ),
          )
        ],
      )

    );

  }

}