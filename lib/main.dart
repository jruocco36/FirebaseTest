import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_test/models/user.dart';
import 'package:firebase_test/screens/wrapper.dart';
import 'package:firebase_test/services/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // create StreamProvider listening for our AuthService class
    // when onAuthStateChanged in AuthService, returns a user to StreamProvider
    return StreamProvider<User>.value(
      // create instance of our AuthService class and access user stream to listen
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
