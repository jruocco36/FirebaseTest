import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_test/models/brew.dart';

class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {
    // grab current 'brews' collection snapshot from DatabaseService through provider
    // provider is StreamProvider from the parent 'Home' widget
    final brews = Provider.of<List<Brew>>(context);
    brews.forEach((brew) {
      print(brew.name);
      print(brew.sugars);
      print(brew.strength);
    });

    return Container();
  }
}
