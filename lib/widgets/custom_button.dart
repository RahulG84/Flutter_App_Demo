import 'dart:math';

import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  double topPadding;
  double bottomPadding;
  String buttonName;
  Color? fillColor;
  Color? textColor;
  void Function()? onPressed;
  CustomButton({
    Key? key,
    required this.topPadding,
    required this.buttonName,
    required this.bottomPadding,
    this.fillColor = Colors.white,
    this.textColor = Colors.black,
    this.onPressed,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          14.00, widget.topPadding, 14.00, widget.bottomPadding),
      child: Container(
        alignment: null,
        width: double.infinity,
        height: 40.0,
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: TextButton.styleFrom(
              backgroundColor: widget.fillColor,
              side: const BorderSide(color: Colors.white, width: 1.0)),
          child: Text(
            widget.buttonName,
            style: TextStyle(
                color: widget.textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
