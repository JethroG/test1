import 'package:flutter/material.dart';
import 'package:test_for_test/splash_screen.dart';
import 'package:test_for_test/utils/color_scheme.dart';
import 'package:test_for_test/welcom_screen/welcom_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const SplashScreen(),
    );
  }
}

