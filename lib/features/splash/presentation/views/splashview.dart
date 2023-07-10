import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:labor/features/splash/presentation/views/widgets/splashviewBody.dart';

import '../../../../constants.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          toolbarHeight: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: kPrimaryColor,
              statusBarIconBrightness: Brightness.light),
        ),
        body: const SplashViewBody());
  }
}
