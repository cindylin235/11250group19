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
            "Three species of sturgeon can be found in Florida: Atlantic sturgeon "
                "(Acipsener oxyrinchus oxyrinchus), Gulf sturgeon (Acipenser oxyrinchus desotoi) and "
                "shortnose sturgeon (Acipenser brevirostrum). All three species have a round body imbedded with "
                "an armor of five rows of bony plates or scutes. They have no bony skeleton. They also have no teeth and "
                "the upper lobe of the tail is longer than the lower lobe similar to sharks. All three species are anadromous,"
                " meaning that they move from saltwater to freshwater to spawn. Florida sturgeon can live long lives, "
                "exceeding 25 years in some cases.",
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