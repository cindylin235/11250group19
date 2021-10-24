// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BivensArm extends StatelessWidget {
  const BivensArm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(

        appBar: AppBar(
          title: const Text("Bivens Arm", style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  'Assets/biven.jpg',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                  semanticLabel: 'Image of Bivens Arms',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Bivens Arm', style: TextStyle(decoration: TextDecoration.underline, fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Bivens Arm is a body of water in Gainesville, Florida. Located west of U.S. Route 441 and south of Archer Road, it is a part of Paynes Prairie. \n \n Bivens Arm is a small shallow lake covering approximately 189 acres (76 ha) in southwest Gainesville. Bivens Arm is a unique environment, which supports a wide diversity of plant and animal life in an urban setting.')
              ),
            )
          ],
        )

    );

  }

}