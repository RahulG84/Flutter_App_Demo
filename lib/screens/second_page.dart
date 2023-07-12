import 'package:flutter/material.dart';
import 'package:lecarage_practice/utils/my_routes.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.thirdPageRoute);
        },
        child: const Text("Third Page"),
      ),
    );
  }
}
