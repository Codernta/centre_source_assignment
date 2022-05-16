import 'package:centre_source_assignment/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pixabay Clone',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
