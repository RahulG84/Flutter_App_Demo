import 'package:flutter/material.dart';
import 'package:lecarage_practice/screens/first_page.dart';
import 'package:lecarage_practice/screens/home_screen.dart';
import 'package:lecarage_practice/screens/login_screen.dart';
import 'package:lecarage_practice/screens/second_page.dart';
import 'package:lecarage_practice/screens/signup_screen.dart';
import 'package:lecarage_practice/screens/third_page.dart';
import 'package:lecarage_practice/utils/my_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   MyRoutes.firstPageRoute: (context) => const FirstPage(),
      //   MyRoutes.secondPageRoute: (context) => const SecondPage(),
      //   MyRoutes.thirdPageRoute: (context) => const ThirdPage(),
      // },
      // routes: {
      //   MyRoutes.loginRoute: (context) => const Login(),
      //   MyRoutes.signupRoute: (context) => const SignUp(),
      //   MyRoutes.homeRoute: (context) => Home("email", "password")
      // },
      // home: Scaffold(
      //   body: Login(),
      // ),
      home: Scaffold(
        body: SafeArea(
          child: Login(),
          // child: SignUp(),
        ),
      ),
    );
  }
}
