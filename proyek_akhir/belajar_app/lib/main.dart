import 'package:belajar_app/onboardingone.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingOne(),
    );
  }
}
