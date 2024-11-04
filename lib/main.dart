// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:interactive_rating_component/pages/ratings_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff131518),
        appBarTheme: AppBarTheme(
          color: Color(0xff131518),
          titleTextStyle: TextStyle(color: Colors.white),
          elevation: 4.0,
          shadowColor: Color(0xffFC7614),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Interactive Rating Component'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RatingsComponent(),
          ),
        ),
      ),
    );
  }
}
