import 'package:cocktail/homepage.dart';
import 'package:flutter/material.dart';

const Color myColor = Colors.brown;
void main() {
  runApp(MyApp());
}

// Stateless and stateful widget

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cocktail App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}
