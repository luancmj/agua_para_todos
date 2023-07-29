import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:agua_para_todos/models/water_source.dart';

class SourcesRepository extends ChangeNotifier {
  Stream<List<WaterSource>> getSources() => FirebaseFirestore.instance
    .collection('sources')
    .snapshots()
    .map((snapshot) => 
      snapshot.docs.map((doc) =>
        WaterSource.fromJson(doc.data())).toList()
    )
  ;

  Stream<List<WaterSource>> get sources => getSources();

}