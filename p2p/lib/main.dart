import 'package:flutter/material.dart';
import 'package:p2p/screens/checkBalance.dart';
import 'package:p2p/screens/home.dart';
import 'package:p2p/screens/login.dart';
import 'package:p2p/screens/manageCards.dart';
import 'package:p2p/screens/service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: home());
  }
}
