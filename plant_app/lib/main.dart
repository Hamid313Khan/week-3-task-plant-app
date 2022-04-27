import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login_screen.dart';

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
    return LoginScreen();
  }
}
