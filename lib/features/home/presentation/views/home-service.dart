import 'package:flutter/material.dart';

import 'home-service-body.dart';

class HomeServicePage extends StatelessWidget {
  const HomeServicePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const HomeServicePageBody(),
    );
  }
}
