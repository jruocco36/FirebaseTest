import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_test/models/brew.dart';

class DatabaseService {
  // user id (don't have multiple users using same app, so can specify this here)
  final String uid;
  DatabaseService({this.uid});

  // collection reference
  // if this collection does not exist, it will be created for us
  final CollectionReference brewCollection =
      Firestore.instance.collection('brews');

  Future updateUserData(String sugars, String name, int strength) async {
    // if this document doesn't exist, Firebase will create it for us
    return await brewCollection.document(uid).setData({
      'sugars': sugars,
      'name': name,
      'strength': strength,
    });
  }

  // brew list from snapshot
  List<Brew> _brewListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Brew(
        // ?? - if doesn't exist, return ''/'0'/0
        name: doc.data['name'] ?? '',
        sugars: doc.data['sugars'] ?? '0',
        strength: doc.data['strength'] ?? 0,
      );
    }).toList();
  }

  // get brews stream
  Stream<List<Brew>> get brews {
    return brewCollection.snapshots()
    .map(_brewListFromSnapshot);
  }
}
