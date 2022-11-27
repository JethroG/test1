import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_test/scan_bottle_screen/scan_bottle_screen.dart';
import 'package:test_for_test/welcom_screen/sign_in_bloc/go_to_next_screens_bloc.dart';

import '../sign_in_screen/bloc/auth_bloc.dart';
import '../sign_in_screen/sign_in_screen.dart';
import '../utils/color_scheme.dart';
import '../utils/size_box_set.dart';
import '../utils/text_fonts.dart';

class WelcomeScreenWidget extends StatelessWidget {
  const WelcomeScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GoToSignInScreenBloc(),
        child: BlocConsumer<GoToSignInScreenBloc, GoToSignInScreenState>(listener: (context, state) {
          log('$state');
          if (state is OpenSignInScreenState) {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return const SignInScreen(); // <- Navigating to second screen
            }));
          } else if (state is OpenScanBottleScreenState) {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return const ScanBottleScreen(); // <- Navigating to second screen
            }));
          }
        }, builder: (context, state) {
         return Stack(
            children: <Widget>[
              Image.asset(
                "assets/graphics/back.png",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Scaffold(
                  backgroundColor: Colors.transparent,
                  bottomNavigationBar: Container(
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
                            onPressed: () async {
                              context
                                  .read<GoToSignInScreenBloc>()
                                  .add(OpenScanBottleScreenEvent());
                            },
                            child: Container(
                              padding: EdgeInsets.all(16),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: primaryYellow,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                'Scan bottle',
                                textAlign: TextAlign.center,
                                style: eBGaramondRegularTextStyle.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
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
                                    context
                                        .read<GoToSignInScreenBloc>()
                                        .add(OpenSignInScreenEvent());
                                    // Route route = MaterialPageRoute(
                                    //   builder: (_) => BlocProvider<AuthBloc>.value(
                                    //     value: AuthBloc(),
                                    //     child: const SignInScreen(),
                                    //   ),
                                    // );
                                    // Navigator.pushReplacement(context, route);
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
        }));
  }
}
