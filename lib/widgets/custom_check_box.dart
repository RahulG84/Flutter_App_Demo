import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
   String? normalText;
   String? boldText;
  CustomCheckBox({Key? key, this.normalText, this.boldText}) : super(key: key);

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: null,
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            checkColor: Colors.white,
            activeColor: Colors.transparent,
            side: BorderSide(
                width: 1.0,
                color: isChecked ? Colors.transparent : Colors.white),
            onChanged: (val) {
              setState(() {
                isChecked = val!;
              });
            },
          ),
          Text(
            widget.normalText!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            width: 10.00,
          ),
          Text(
            widget.boldText!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
