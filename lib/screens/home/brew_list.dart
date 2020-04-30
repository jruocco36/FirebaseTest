import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_test/models/brew.dart';
import 'package:firebase_test/screens/home/brew_tile.dart';

class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {
    // grab current list of brews from DatabaseService through provider
    // provider is StreamProvider from the parent 'Home' widget that is
    // listening to changes to the DatabaseService 'brews' collection stream
    final brews = Provider.of<List<Brew>>(context);

    // iterates through our list and creates an array of widgets with 
    // one widget for each item
    return ListView.builder(
      itemCount: brews.length,
      itemBuilder: (context, index) {
        return BrewTile(brew: brews[index]);
      },
    );
  }
}
