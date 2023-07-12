import 'package:flutter/material.dart';
import 'package:lecarage_practice/screens/home_screen.dart';
import 'package:lecarage_practice/screens/signup_screen.dart';
import 'package:lecarage_practice/utils/my_routes.dart';
import 'package:lecarage_practice/widgets/custom_check_box.dart';
import 'package:lecarage_practice/widgets/custom_text_button.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_image.dart';
import '../widgets/custom_text.dart';
import '../widgets/input_text.dart';
import 'package:lecarage_practice/screens/signup_screen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
  String email = '';
  String password = '';
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/images/login.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImage(topPadding: 20.0),
                CustomText(
                  textName: "Log In",
                  topPadding: 10.0,
                  bottomPadding: 10.0,
                  textStyle: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                InputText(
                  onChanged: (userName) {
                    setState(() {
                      email = userName;
                    });
                  },
                  leftIconName: const Icon(
                    Icons.person_3_outlined,
                    color: Colors.white,
                  ),
                  hintName: "User Name",
                  topPadding: 10.0,
                  secureText: false,
                  bottomPadding: 10.00,
                ),
                InputText(
                  onChanged: (pass) {
                    setState(() {
                      password = pass;
                    });
                  },
                  leftIconName: const Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.white,
                  ),
                  rightIconName: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          isVisible = !isVisible;
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  hintName: "Password",
                  topPadding: 10.0,
                  secureText: isVisible,
                  bottomPadding: 0.00,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckBox(normalText: "Remember Me", boldText: ''),
                    CustomTextButton(
                      normalTextName: "Forget?",
                      textColor: Colors.white,
                      boldTextName: '',
                      align: MainAxisAlignment.center,
                      topPadding: 10.00,
                    )
                  ],
                ),
                // ),
                CustomButton(
                  buttonName: "LOGIN",
                  topPadding: 250.00,
                  bottomPadding: 20.00,
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => Home(email, password)),
                    // );
                  },
                ),
                // const Checkbox(value: null, onChanged: null)
                CustomButton(
                  bottomPadding: 30.00,
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const SignUp()),
                    // );
                    Navigator.pushNamed(context, MyRoutes.signupRoute);
                    // Navigator.pop(context);
                  },
                  buttonName: "SIGN UP",
                  topPadding: 10.00,
                  textColor: Colors.white,
                  fillColor: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
