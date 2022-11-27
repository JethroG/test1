import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_test/welcom_screen/sign_in_bloc/go_to_next_screens_bloc.dart';
import 'package:test_for_test/welcom_screen/welcom_screen_widget.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return
        BlocProvider(
          create: (context) => GoToSignInScreenBloc(),
      child: MaterialApp(
        home: WelcomeScreenWidget(),
      ),
    );

  }
}
