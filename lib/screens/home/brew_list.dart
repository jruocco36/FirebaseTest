import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {
    // grab current 'brews' collection snapshot from DatabaseService through provider
    // provider is StreamProvider from the parent 'Home' widget
    final brews = Provider.of<QuerySnapshot>(context);
    for (var doc in brews.documents) print(doc.data);

    return Container();
  }
}
