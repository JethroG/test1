import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_test/sign_in_screen/sign_in_screen.dart';
import 'package:test_for_test/utils/color_scheme.dart';
import 'package:test_for_test/utils/size_box_set.dart';
import 'package:test_for_test/utils/text_fonts.dart';

import '../sign_in_screen/bloc/auth_bloc.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return
      Stack(
        children: <Widget>[
          Image.asset(
            "assets/graphics/SB-Headers-06-1024x399-new-1.jpg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar:
        Container(
            color: primaryBlueDark,
            margin: EdgeInsets.fromLTRB(16, 0, 16, 36),
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome!',
                  style: eBGaramondRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 32),
                ),
                sizeHeight8,
                Text(
                  'Text text text',
                  style: latoRegularTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                sizeHeight24,
                 TextButton(
                    onPressed: () async {},
                    child: Container(
                      padding: EdgeInsets.all(16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: primaryYellow,
                          borderRadius: BorderRadius.circular(8)),
                      child:Text(
                      'Scan bottle',
                      textAlign: TextAlign.center,
                      style: eBGaramondRegularTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,),

                    ),
                  ),
                ),
                sizeHeight32,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Have an account?',
                      style: latoRegularTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                        onPressed: () {
                          Route route = MaterialPageRoute(
                            builder: (_) => BlocProvider<AuthBloc>.value(
                              value: AuthBloc(),
                              child: const SignInScreen(),
                            ),
                          );
                          Navigator.pushReplacement(context, route);
                        },
                        child: Text(
                          'Sign in first',
                          style: latoRegularTextStyle.copyWith(
                              color: primaryYellow,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                )
              ],
            )))
        ],
      );
  }
}
