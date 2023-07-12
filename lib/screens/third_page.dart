import 'package:flutter/material.dart';
import 'package:lecarage_practice/utils/my_routes.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.firstPageRoute);
        },
        child: const Text("First Page"),
      ),
    );
  }
}
