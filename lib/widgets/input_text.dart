import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  double topPadding;
  double bottomPadding;
  String hintName;
  Widget? leftIconName;
  Widget? rightIconName;
  bool secureText;

  InputText(
      {Key? key,
      required this.topPadding,
      required this.bottomPadding,
      this.leftIconName,
      this.rightIconName,
      required this.secureText,
      required this.hintName})
      : super(key: key);

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          14.00, widget.topPadding, 14.00, widget.bottomPadding),
      child: TextField(
        style: const TextStyle(color: Colors.white, fontSize: 20),
        onChanged: null,
        obscureText: widget.secureText,
        decoration: InputDecoration(
          hintText: widget.hintName,
          hintStyle: const TextStyle(color: Colors.white, fontSize: 18),
          prefixIcon: widget.leftIconName,
          contentPadding: const EdgeInsets.all(10.0),
          suffixIcon: widget.rightIconName,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
          ),
        ),
      ),
    );
  }
}
