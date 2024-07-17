import 'package:flutter/material.dart';
import './Pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go Moon',
      theme: ThemeData(scaffoldBackgroundColor: Color.fromRGBO(31, 31, 31, 1)),
      home: Homepage(),
    );
  }
}
