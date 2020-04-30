import 'package:cloud_firestore/cloud_firestore.dart';

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
}
