import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_test/bottom_navigation_bar_pages/my_collection_screen/bloc/my_collection_bloc.dart';
import 'package:test_for_test/utils/color_scheme.dart';
import 'package:test_for_test/utils/size_box_set.dart';
import 'package:test_for_test/utils/text_fonts.dart';
import 'package:test_for_test/welcom_screen/welcom_screen.dart';
import '../main_screen/main_screen_navigation.dart';
import 'bloc/auth_bloc.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isObscure = true;

  late FocusNode usernameFocus;
  late FocusNode passwordFocus;
  late FocusNode loginBtnFocus;
  late TextEditingController userName;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    usernameFocus = FocusNode();
    passwordFocus = FocusNode();
    loginBtnFocus = FocusNode();
    userName = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    usernameFocus.dispose();
    passwordFocus.dispose();
    loginBtnFocus.dispose();
    userName.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryBlue,
        appBar: AppBar(
          backgroundColor: primaryBlue,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Route route = MaterialPageRoute(
                  builder: (context) => const WelcomeScreen());
              Navigator.pushReplacement(context, route);
            },
          ),
        ),
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthError) {
              buildErrorLayout();
            } else if (state is AuthLoaded) {
              clearTextData();
              Route route = MaterialPageRoute(
                builder: (_) => BlocProvider<MyCollectionBloc>.value(
                  value: MyCollectionBloc(),
                  child: const MainScreenNavigation(),
                ),
              );
              Navigator.pushReplacement(context, route);

            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return Stack(
                children: [
                  buildInitialInput(),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.grey.withOpacity(0.60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          CircularProgressIndicator(color: primaryBlueDark,),
                          SizedBox(width: 16,),
                          Text("Loading...",style: latoRegularTextStyle.copyWith(
                            color: primaryBlueDark,
                            fontWeight: FontWeight.w400,
                            fontSize: 16
                          ),),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return buildInitialInput();
            }
          },
        ));
  }

  Widget buildInitialInput() =>
      SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(16),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizeHeight32,
                  Text('Sign in', style:
                  eBGaramondRegularTextStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 32
                  ),),
                  sizeHeight32,
                  TextField(
                    style: latoRegularTextStyle.copyWith(color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    cursorColor: primaryYellow,
                    autofocus: false,
                    controller: userName,
                    focusNode: usernameFocus,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: latoRegularTextStyle.copyWith(
                          color: primaryYellow,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: primaryYellow),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: primaryYellow),
                      ),

                    ),
                  ),
                  sizeHeight16,
                  TextField(
                    style: latoRegularTextStyle.copyWith(color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    cursorColor: primaryYellow,
                    controller: password,
                    focusNode: passwordFocus,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure ? Icons.visibility : Icons
                              .visibility_off, color: primaryYellow,),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }
                      ),
                      labelText: 'Password',
                      labelStyle: latoRegularTextStyle.copyWith(
                          color: primaryYellow,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: primaryYellow),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: primaryYellow),
                      ),

                    ),
                  ),
                  sizeHeight32,
                  TextButton(
                    focusNode: loginBtnFocus,
                    onPressed: () async {
                      BlocProvider.of<AuthBloc>(context)
                          .add(Login(userName.text, password.text));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: primaryYellow,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Continue',
                        textAlign: TextAlign.center,
                        style: eBGaramondRegularTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,),

                      ),
                    ),
                  ),
                  sizeHeight8,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Can’t sign in?',
                        style: latoRegularTextStyle.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      TextButton(
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => const SignInScreen());
                            Navigator.pushReplacement(context, route);
                          },
                          child: Text(
                            'Recover password',
                            style: eBGaramondRegularTextStyle.copyWith(
                                color: primaryYellow,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  )
                ],
              ))
      );

  ScaffoldFeatureController buildErrorLayout() =>
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter username/password!'),
        ),
      );

  clearTextData() {
    userName.clear();
    password.clear();
  }

}
