import 'package:flutter/material.dart';

import '../../constants.dart';

class Customtextformfield extends StatelessWidget {
  const Customtextformfield(
      {required this.x,
      this.suffixicon,
      this.onChanged,
      this.hinttext,
      super.key});
  final bool? x;
  final String? hinttext;
  final void Function(String)? onChanged;
  final IconButton? suffixicon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(color: Color(0xffF9FFF6)),
      child: TextFormField(
          obscureText: x!,
          obscuringCharacter: '*',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'this field is required';
            }
            return null;
          },
          cursorColor: kPrimaryColor,
          onChanged: onChanged,
          decoration: InputDecoration(
            suffixIcon: suffixicon,
            suffixIconColor: const Color(0xffDFDFDF),
            contentPadding: const EdgeInsets.all(20),
            hintText: hinttext,
            hintStyle: const TextStyle(
                fontFamily: "din-next-lt-w23", color: Color(0xffDFDFDF)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffDFDFDF)),
                borderRadius: BorderRadius.circular(5)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(5)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(5)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(5)),
          )),
    );
  }
}
