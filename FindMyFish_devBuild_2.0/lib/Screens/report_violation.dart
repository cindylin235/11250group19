import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReportViolationScreen extends StatelessWidget {
  const ReportViolationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Report Violation"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.only(top: 40.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.network(
                "https://www.floridamuseum.ufl.edu/wp-content/uploads/sites/85/2019/10/fwc_logo_0.png",
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
                width: 200,
                height: 245,
                fit: BoxFit.cover,
                semanticLabel: 'Image of Endangered Species',
              ),
            ),
          ),
          const Text(
            'If you have noticed any fish, wildlife, or boating violation, you can report it to FWC\'s Wildlife Alert Reward Program',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const Text('\n\nCall 1-888-404-FWCC or report a violation here:', style: TextStyle(fontSize: 18)),
          const Text('https://myfwc.com/contact/wildlife-alert/', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ],
      ),
    );
  }

}