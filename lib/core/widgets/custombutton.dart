import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.topLeft,
      required this.bottomRight,
      required this.topRight,
      required this.bottomLeft,
      required this.text,
      required this.backcolor,
      required this.textcolor,
      required this.onPressed,
      required this.fontSize});
  final double topLeft, bottomRight, topRight, bottomLeft, fontSize;
  final String text;
  final Color backcolor, textcolor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(topLeft),
                      bottomRight: Radius.circular(bottomRight),
                      topRight: Radius.circular(topRight),
                      bottomLeft: Radius.circular(bottomLeft))),
              backgroundColor: backcolor),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: textcolor, fontSize: fontSize),
          )),
    );
  }
}
