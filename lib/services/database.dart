import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // collection reference
  // if this collection does not exist, it will be created for us
  final CollectionReference brewCollection =
      Firestore.instance.collection('brews');
}
