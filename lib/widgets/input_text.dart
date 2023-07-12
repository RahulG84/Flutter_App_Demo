import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  double topPadding;
  double bottomPadding;
  String? hintName;
  Widget? leftIconName;
  Widget? rightIconName;
  bool secureText;
  String? lableText;
  TextInputType? keyBoardType;
  void Function(String)? onChanged;

  InputText(
      {Key? key,
      required this.topPadding,
      required this.bottomPadding,
      this.leftIconName,
      this.rightIconName,
      this.onChanged,
      this.lableText,
      this.keyBoardType,
      required this.secureText,
      this.hintName})
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
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.lableText != null
              ? Text(
                  widget.lableText!,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                )
              : const SizedBox.shrink(),
          const SizedBox(
            height: 10.00,
          ),
          TextField(
            style: const TextStyle(color: Colors.white, fontSize: 20),
            onChanged: widget.onChanged,
            obscureText: widget.secureText,
            keyboardType: widget.keyBoardType,
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
        ],
      ),
    );
  }
}
