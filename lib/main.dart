import 'package:electronic_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ElectronicApp());
}

class ElectronicApp extends StatelessWidget {
  const ElectronicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Electronic Devices and Circuits',
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: const HomePage(
        title: 'Electronic Devices and Circuits',
      ),
    );
  }
}
