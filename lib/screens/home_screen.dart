import 'package:flutter/material.dart';
import 'package:lecarage_practice/widgets/custom_button.dart';
import 'package:lecarage_practice/widgets/custom_text.dart';

class Home extends StatelessWidget {
  late String email;
 late String password;

  Home(String email, String password) {
    this.email = email;
    this.password = password;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: null,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              textName: ('$email\n$password'),
              topPadding: 00.00,
              bottomPadding: 0.00,
              textStyle: const TextStyle(
                color: Colors.white,
              ),
            ),
            CustomButton(
              topPadding: 20.00,
              buttonName: "Logout",
              bottomPadding: 0.00,
              fillColor: Colors.white,
              textColor: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        )));
  }
}
