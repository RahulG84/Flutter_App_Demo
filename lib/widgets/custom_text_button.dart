import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  double topPadding;
  String? normalTextName;
  String? boldTextName;
  Color? textColor;
  MainAxisAlignment? align;

   CustomTextButton(
      {Key? key,
      this.align,
      required this.topPadding,
      this.boldTextName,
      this.normalTextName,
      this.textColor,})
      : super(key: key);

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.fromLTRB(14.00,widget.topPadding, 14.00, 10.00),
      child: Container(
        alignment: null,
        child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: widget.align!,
            children: [
              Text(
                widget.normalTextName!,
                style: TextStyle(
                  fontSize: 15,
                  color: widget.textColor,
                ),
              ),
              const SizedBox(width: 5.00),
              Text(
                widget.boldTextName!,
                style: TextStyle(
                  fontSize: 15,
                  color: widget.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
