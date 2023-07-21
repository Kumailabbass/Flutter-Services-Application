import 'package:flutter/material.dart';
import 'package:flutter_application_1/services_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: _customSwatchColor(),
      ),
      home: ServicesScreen(),
    );
  }

  MaterialColor _customSwatchColor() {
    const int primaryColorValue = 0xFFFA7C59;
    return MaterialColor(primaryColorValue, {
      50: Color(primaryColorValue),
      100: Color(primaryColorValue),
      200: Color(primaryColorValue),
      300: Color(primaryColorValue),
      400: Color(primaryColorValue),
      500: Color(primaryColorValue),
      600: Color(primaryColorValue),
      700: Color(primaryColorValue),
      800: Color(primaryColorValue),
      900: Color(primaryColorValue),
    });
  }
}
