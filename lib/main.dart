import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.yellow,
            child: const Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("data"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("data"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("data"),
                    ),
                  ],
                ),
                Text(
                  "data",
                  style: TextStyle(backgroundColor: Colors.pink),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
