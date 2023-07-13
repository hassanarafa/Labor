import 'package:flutter/widgets.dart';
import 'package:labor/constants.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errormessage});
  final String errormessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errormessage,
        style: TextStyle(fontSize: 20, color: kPrimaryColor),
      ),
    );
  }
}
