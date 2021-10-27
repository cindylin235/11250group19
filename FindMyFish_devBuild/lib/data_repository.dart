import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DataRepository {

  final CollectionReference locations = FirebaseFirestore.instance.collection("Demo");

  Stream<QuerySnapshot> getStream() {
    return locations.snapshots();
  }

}