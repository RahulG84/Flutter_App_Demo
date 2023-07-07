import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({Key? key}) : super(key: key);

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      checkColor: Colors.white,
      activeColor: Colors.transparent,
      side: BorderSide(
          width: 1.0, color: isChecked ? Colors.transparent : Colors.white),
      onChanged: (val) {
        setState(() {
          isChecked = val!;
        });
      },
    );
  }
}
