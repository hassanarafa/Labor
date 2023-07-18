import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.topLeft,
      required this.bottomRight,
      required this.topRight,
      required this.bottomLeft,
      required this.backcolor,
      required this.onPressed,
      required this.buttonContent});
  final double topLeft, bottomRight, topRight, bottomLeft;
  final Color backcolor;
  final void Function()? onPressed;
  final Widget buttonContent;
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
          child: buttonContent),
    );
  }
}
