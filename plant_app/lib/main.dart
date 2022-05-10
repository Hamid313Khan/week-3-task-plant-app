import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Screens/login_screen.dart';
import 'Screens/register_screen.dart';
import 'package:plant_app/Screens/home_screen.dart';

void main() {
  runApp(PlantApp());
}

class PlantApp extends StatefulWidget {
  @override
  State<PlantApp> createState() => _PlantAppState();
}

class _PlantAppState extends State<PlantApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
