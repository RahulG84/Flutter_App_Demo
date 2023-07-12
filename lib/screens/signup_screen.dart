import 'package:flutter/material.dart';
import 'package:lecarage_practice/screens/login_screen.dart';
import 'package:lecarage_practice/widgets/custom_button.dart';
import 'package:lecarage_practice/widgets/custom_text.dart';
import 'package:lecarage_practice/widgets/custom_text_button.dart';
import 'package:lecarage_practice/widgets/input_text.dart';

import '../widgets/custom_check_box.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPassVisible = true;
  bool isConfirmPassVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/images/plainImage.png'),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  topPadding: 30.00,
                  bottomPadding: 10.00,
                  textName: "Sign Up",
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InputText(
                  topPadding: 10.00,
                  bottomPadding: 10.00,
                  secureText: false,
                  lableText: "First name:",
                ),
                InputText(
                  topPadding: 10.00,
                  bottomPadding: 10.00,
                  secureText: false,
                  lableText: "Last Name:",
                ),
                InputText(
                  topPadding: 10.00,
                  bottomPadding: 10.00,
                  secureText: false,
                  keyBoardType: TextInputType.emailAddress,
                  lableText: "Email Address:",
                ),
                InputText(
                  topPadding: 10.00,
                  bottomPadding: 10.00,
                  secureText: false,
                  keyBoardType: TextInputType.number,
                  lableText: "Cell Phone Number:",
                ),
                InputText(
                  topPadding: 10.00,
                  bottomPadding: 10.00,
                  secureText: isPassVisible,
                  lableText: "Password:",
                  keyBoardType: TextInputType.emailAddress,
                  rightIconName: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          isPassVisible = !isPassVisible;
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                InputText(
                  topPadding: 10.00,
                  bottomPadding: 10.00,
                  secureText: isConfirmPassVisible,
                  lableText: "Confirm Password:",
                  keyBoardType: TextInputType.emailAddress,
                  rightIconName: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          isConfirmPassVisible = !isConfirmPassVisible;
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                CustomCheckBox(
                  normalText: "I agree with",
                  boldText: "Terms & Conditions",
                ),
                CustomButton(
                  topPadding: 50.00,
                  buttonName: "SIGN UP",
                  bottomPadding: 10.00,
                  fillColor: Colors.transparent,
                  textColor: Colors.white,
                ),
                Center(
                  child: CustomTextButton(
                    normalTextName: "Already have an account?",
                    boldTextName: "Login",
                    textColor: Colors.white,
                    align: MainAxisAlignment.center,
                    topPadding: 1.10,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
