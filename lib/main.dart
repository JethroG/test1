import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:test_for_test/utils/color_scheme.dart';
import 'package:test_for_test/welcom_screen/welcom_screen.dart';

Future<void> main() async {
  await Future.delayed(const Duration(seconds: 2))
      .then((value) => FlutterNativeSplash.remove());
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
      home: const WelcomeScreen(),
    );
  }
}

