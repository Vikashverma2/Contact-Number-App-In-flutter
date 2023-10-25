import 'package:flutter/material.dart';
import 'package:number_note/pages/HomePage.dart';
import 'package:number_note/pages/SplachScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Number Note',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: SplachScreen(),
    );
  }
}
