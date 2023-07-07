import 'package:flutter/material.dart';

class CustomImage extends StatefulWidget {
  double topPadding;
  CustomImage({Key? key, this.topPadding = 10.0}) : super(key: key);

  @override
  State<CustomImage> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(14.00, widget.topPadding, 14.00, 20.00),
      child: Center(
        child: Image.asset(
          "lib/assets/images/lecarage_logo.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
