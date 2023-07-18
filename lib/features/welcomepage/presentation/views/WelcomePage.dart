import 'package:flutter/material.dart';

import 'WelcomePage-body.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const WelcomePageBody(),
    );
  }
}
