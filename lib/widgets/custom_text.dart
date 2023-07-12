import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  double topPadding;
  double bottomPadding;
  String textName;
  TextStyle? textStyle;
  CustomText(
      {Key? key,
      required this.topPadding,
      required this.bottomPadding,
      this.textStyle,
      required this.textName})
      : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          14.00, widget.topPadding, 14.00, widget.bottomPadding),
      child: Text(
        widget.textName,
        style: widget.textStyle,
        // style: widget.textStyle?.merge(
        //   const TextStyle(
        //     fontSize: widget.textSize!,
        //     fontWeight: FontWeight.bold,
        //     color: Colors.white,
        //   ),
        // ),
      ),
    );
  }
}
