import 'dart:math';

import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  double topPadding;
  String buttonName;
  Color? fillColor;
  Color? textColor;
  CustomButton({
    Key? key,
    required this.topPadding,
    required this.buttonName,
    this.fillColor = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(14.00, widget.topPadding, 14.00, 20.00),
      child: Container(
        alignment: null,
        width: double.infinity,
        height: 40.0,
        child: ElevatedButton(
          onPressed: null,
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
