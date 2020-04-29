import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_test/models/user.dart';
import 'package:firebase_test/screens/authenticate/authenticate.dart';
import 'package:firebase_test/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    return user == null ? Authenticate() : Home();
  }
}
