import 'package:flutter/material.dart';
import 'package:test_for_test/utils/color_scheme.dart';
import 'package:test_for_test/welcom_screen/welcom_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds:2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:
      (context)=>const WelcomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/graphics/SB-Headers-06-1024x399-new-1.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Image.asset(
                "assets/graphics/one_cask_at_a_timeelite_bottle_front_labels_classic_and_scarce (2) 3.png",
              ),
            )),
      ],
    );
  }
}
