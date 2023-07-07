import 'package:flutter/material.dart';
import 'package:lecarage_practice/widgets/custom_check_box.dart';
import 'package:lecarage_practice/widgets/custom_text_button.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_image.dart';
import '../widgets/custom_text.dart';
import '../widgets/input_text.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                textName: "Log In", topPadding: 10.0, bottomPadding: 20.0),
            InputText(
                leftIconName: const Icon(
                  Icons.person_3_outlined,
                  color: Colors.white,
                ),
                hintName: "User Name",
                topPadding: 10.0,
                secureText: false,
                bottomPadding: 10.00),
            InputText(
              leftIconName: const Icon(
                Icons.lock_outline_rounded,
                color: Colors.white,
              ),
              rightIconName: const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.remove_red_eye,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              hintName: "Password",
              topPadding: 10.0,
              secureText: true,
              bottomPadding: 0.00,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0,5.0,0.0),
                      child: CustomCheckBox(),
                    ),
                    CustomTextButton(
                        textButtonName: "Remember Me", textColor: Colors.white,
                    ),
                  ],
                ),
                CustomTextButton(
                  textButtonName: "Forgot?",
                  textColor: const Color.fromRGBO(241, 241, 241, 1),
                ),
              ],
              //#64875f
            ),
            CustomButton(buttonName: "LOGIN", topPadding: 300.00),
            // const Checkbox(value: null, onChanged: null)
            CustomButton(
              buttonName: "SIGN UP",
              topPadding: 10.00,
              textColor: Colors.white,
              fillColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
