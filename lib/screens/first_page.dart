import 'package:flutter/material.dart';
import 'package:lecarage_practice/utils/my_routes.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.secondPageRoute);
        },
        child: const Text("Second Page"),
      ),
    );
  }
}
