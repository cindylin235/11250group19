//Endangered species page showing the weekly species of the week

import 'package:flutter/material.dart';

class EndangeredSpeciesScreen extends StatelessWidget {
  const EndangeredSpeciesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Endangered Species of The Week"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text("\nGULF STURGEON", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.network(
                "https://media.fisheries.noaa.gov/styles/original/s3/dam-migration/640x427-atlantic-sturgeon.png?itok=UAWSvg0s",
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
                height: 200,
                fit: BoxFit.cover,
                semanticLabel: 'Image of Endangered Species',
              ),
            ),
          ),
          const Text("Description", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          const Text(
            "In 1991, Gulf sturgeon were listed as threatened under the Endangered Species Act after their population was greatly reduced or eliminated throughout much of their range because of overfishing, dam construction, and habitat degradation.",
            textAlign: (TextAlign.center),
            style: TextStyle(fontSize: 16),
          ),

          const Text("\nStatus", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          const Text(" Species of Special Concern (Florida); Threatened (Federal)", style: TextStyle(fontSize: 16), textAlign: (TextAlign.center)),

        ],
      ),
    );
  }

}