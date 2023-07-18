import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utiliz/assets.dart';
import '../../../../../core/utiliz/routes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(AppRouter.kHomeService);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AssetData.logo),
    );
  }
}
