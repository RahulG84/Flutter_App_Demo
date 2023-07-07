import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  String textButtonName;
  Color? textColor;
  CustomTextButton({Key? key, required this.textButtonName, this.textColor})
      : super(key: key);

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14.00, 10.00, 14.00, 10.00),
      child: Container(
        alignment: null,
        child: TextButton(
          onPressed: null,
          child: Text(
            widget.textButtonName,
            style: TextStyle(
              fontSize: 20,
              color: widget.textColor,
            ),
            
          ),
        ),
      ),
    );
  }
}
